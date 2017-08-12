<?php
/**
* COMPONENT FILE HEADER
**/
namespace G2\A\E\Chronoforms\C;
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
class Connections extends \G2\L\Controller {
	var $models = array('\G2\A\E\Chronoforms\M\Connection', '\G2\A\M\Group');
	var $libs = array('\G2\L\Composer');
	var $helpers= array(
		//'\G2\H\Display',
		'\G2\H\Html',
		'\G2\H\Sorter',
		'\G2\H\Paginator',
		'\G2\A\E\Chronofc\H\Field',
		'\G2\A\E\Chronofc\H\Parser',
	);
	
	function _initialize(){
		$this->layout('default');
	}
	
	function index(){
		$this->Composer->paginate('Connection', $this->Connection);
		
		$order = $this->Composer->sorter(['connection_title' => 'Connection.title', 'connection_id' => 'Connection.id', 'connection_published' => 'Connection.published']);
		$this->Connection->order($order);
		
		$connections = $this->Connection->select('all', ['json' => ['functions']]);
		$this->set('connections', $connections);
	}
	
	function edit(){
		
		if(isset($this->data['save']) OR isset($this->data['apply'])){
			$result = false;
			
			if(!empty($this->data['_formchunks'])){
				//pr($this->data['_formchunks']);
				$tot = [];
				foreach($this->data['_formchunks'] as $ch){
					parse_str($ch, $d);
					//pr($d);
					$tot = array_replace_recursive($tot, $d);
				}
				//pr($tot);
				//die();
				//parse_str(implode('&', $this->data['_formchunks']), $_chunks);
				unset($this->data['_formchunks']);
				//$this->data = array_merge($this->data, $_chunks);
				$this->data = array_merge($this->data, $tot);
				//$this->data = $tot;
				//pr($_chunks);
			}
			
			if(!empty($this->data['Connection'])){
				if(!empty($this->data['Connection']['functions'])){
					foreach($this->data['Connection']['functions'] as $n => $function){
						if(!empty($function['_save'])){
							$_save = \G2\Globals::ext_path('chronofc', 'admin').'functions'.DS.$function['type'].DS.$function['type'].'_save.php';
							$view = new \G2\L\View($this);
							$view->view($_save, ['function' => $function, 'n' => $n]);
						}
					}
				}
				$this->createTemplates();
				$result = $this->Connection->save($this->data['Connection'], ['validate' => true, 'json' => ['params', 'events', 'sections', 'views', 'functions', 'locales', 'rules'], 'alias' => ['title' => 'alias']]);
			}
			
			if($result === true){
				
				if(isset($this->data['apply'])){
					$redirect = r2('index.php?ext=chronoforms&cont=connections&act=edit&id='.$this->Connection->id);
				}else{
					$redirect = r2('index.php?ext=chronoforms&cont=connections');
				}
				return ['success' => rl('Form saved successfully.'), 'redirect' => $redirect];
			}else{
				
				$this->errors['Connection'] = $this->Connection->errors;
				unset($this->data['save']);
				unset($this->data['apply']);
				return ['error' => $this->Connection->errors, 'reload' => true];
			}
		}
		
		if(!empty($this->data['id'])){
			$connection = $this->Connection->where('id', $this->data('id', null))->select('first', ['json' => ['params', 'events', 'sections', 'views', 'functions', 'locales', 'rules']]);
			if(!empty($connection)){
				$this->data = array_merge($this->data, $connection);
			}
			$this->set('connection', $connection);
		}else{
			//default data
			if(empty($this->data['Connection'])){
				$this->data['Connection']['events'] = [
					'load' => ['name' => 'load', 'content' => ''],
					'submit' => ['name' => 'submit', 'content' => ''],
				];
				$this->data['Connection']['sections'] = [
					'one' => ['name' => 'one', 'content' => ''],
				];
				$this->data['Connection']['locales'] = [
					'en_GB' => ['name' => 'en_GB', 'content' => ''],
				];
				$this->data['functions-count'] = 3;
				$this->data['Connection']['views'] = [];
				$this->data['Connection']['functions'] = [
					['type' => 'display_section', 'name' => 'display_section1', '_event' => 'load', 'keepalive' => 1],
					['type' => 'validate_fields', 'name' => 'validate_fields2', '_event' => 'submit'],
					['type' => 'event_load', 'name' => 'event_load3', '_event' => 'validate_fields2/fail'],
				];
				$this->data['Connection']['params']['permissions_deactivated'] = 1;
			}
		}
		
		//get users groups for permissions
		$_groups = $this->Group->select('flat');
		$this->set('_groups', $_groups);
		$groups = array_merge([['Group' => ['id' => 'owner', 'title' => rl('Owner'), '_depth' => 0]]], $_groups);
		$this->set('groups', $groups);
		
		if($this->data('easy') OR $this->data('Connection.params.mode') == 'easy'){
			$this->data('Connection.params.mode', 'easy', true);
			$this->view = 'editeasy';
		}
		
		if(!empty($this->data['Connection']['params']['permissions_deactivated'])){
			$this->set('permissions_deactivated', true);
		}
	}
	
	function wizard(){
		
	}
	
	function createTemplates(){
		if(!empty($this->data['Connection']['sections'])){
			$this->set('__connection', $this->data['Connection']);
			$view = new \G2\L\View($this);
			$parser = new \G2\A\E\Chronofc\H\Parser($view);
			
			foreach($this->data['Connection']['sections'] as $k => $section){
				if(!empty($this->data['Connection']['sections'][$k]['auto'])){
					$this->data['Connection']['sections'][$k]['template'] = $parser->template($section['name'], true);
				}
			}
		}
	}
	
	function toggle(){
		$result = $this->Connection->where('id', $this->data('gcb'))->update([$this->data('fld') => $this->data('val')]);
		
		if($result !== false){
			\GApp::session()->flash('success', rl('Form updated successfully.'));
		}else{
			\GApp::session()->flash('error', rl('Form update error.'));
		}
		
		$this->redirect(r2('index.php?ext=chronoforms&cont=connections'));
	}
	
	function delete(){
		if(is_array($this->data('gcb'))){
			
			$result = $this->Connection->where('id', $this->data('gcb'), 'in')->delete();
			
			if($result !== false){
				\GApp::session()->flash('success', rl('Form deleted successfully.'));
			}else{
				\GApp::session()->flash('error', rl('Form delete error.'));
			}
		}
		
		$this->redirect(r2('index.php?ext=chronoforms&cont=connections'));
	}
	
	function copy(){
		if(is_array($this->data('gcb'))){
			
			$results = $this->Connection->where('id', $this->data('gcb'), 'in')->select();
			
			foreach($results as $result){
				unset($result['Connection']['id']);
				$result['Connection']['alias'] = $result['Connection']['alias'].'-copy';
				$this->Connection->save($result['Connection']);
			}
		}
		
		$this->redirect(r2('index.php?ext=chronoforms&cont=connections'));
	}
	
	function backup(){
		
		if(is_array($this->data('gcb'))){
			
			$results = $this->Connection->where('id', $this->data('gcb'), 'in')->select();
			$output = json_encode($results);
			
			$name = 'Chronoforms6_'.\G2\L\Url::domain();
			if(count($results) == 1){
				$name = $results[0]['Connection']['title'];
			}
			
			//download the file
			if(preg_replace('Opera(/| )([0-9].[0-9]{1,2})', $_SERVER['HTTP_USER_AGENT'])){
				$UserBrowser = 'Opera';
			}elseif(preg_replace('MSIE ([0-9].[0-9]{1,2})', $_SERVER['HTTP_USER_AGENT'])){
				$UserBrowser = 'IE';
			}else{
				$UserBrowser = '';
			}
			$mime_type = ($UserBrowser == 'IE' || $UserBrowser == 'Opera') ? 'application/octetstream' : 'application/octet-stream';
			@ob_end_clean();
			ob_start();

			header('Content-Type: ' . $mime_type);
			header('Expires: ' . gmdate('D, d M Y H:i:s') . ' GMT');

			if ($UserBrowser == 'IE') {
				header('Content-Disposition: inline; filename="' . $name.'_'.date('d_M_Y_H:i:s').'.cf6bak"');
				header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
				header('Pragma: public');
			}
			else {
				header('Content-Disposition: attachment; filename="' . $name.'_'.date('d_M_Y_H:i:s').'.cf6bak"');
				header('Pragma: no-cache');
			}
			print $output;
			exit();
		}
		
		$this->redirect(r2('index.php?ext=chronoforms&cont=connections'));
	}
	
	function restore(){
		if(!empty($_FILES)){
			$file = $_FILES['backup'];
			
			if(!empty($file['size'])){
				
				$ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
				
				if($ext != 'cf6bak' AND $ext != 'cf5bak'){
					\GApp::session()->flash('error', rl('Invalid backup file extension.'));
					$this->redirect(r2('index.php?ext=chronoforms&cont=connections'));
				}
				
				$target = \G2\Globals::get('FRONT_PATH').'cache'.DS.$file['name'];
				
				$saved = \G2\L\Upload::save($file['tmp_name'], $target);
				
				if(!$saved){
					\GApp::session()->flash('error', l_('Upload error'));
				}else{
					if($ext == 'cf6bak'){
						$data = file_get_contents($target);
						\G2\L\File::delete($target);
						
						$rows = json_decode($data, true);
						//pr($rows);die();
						if(!empty($rows)){
							foreach($rows as $row){
								if(isset($row['Connection']['id'])){
									$row['Connection']['id'] = null;
									$row['Connection']['published'] = 0;
									$this->Connection->save($row['Connection']);
								}
							}
						}
					}else if($ext == 'cf5bak'){
						$data = file_get_contents($target);
						$forms = unserialize(base64_decode(trim($data)));
						
						if(!empty($forms)){
							foreach($forms as $form){
								//pr($form);
								$newForm = [];
								if(isset($form['Form']['id'])){
									$form['Form']['id'] = null;
									$form['Form']['published'] = 0;
									$newForm['title'] = $form['Form']['title'];
									$newForm['events'] = [
										'load' => ['name' => 'load'],
										'submit' => ['name' => 'submit'],
									];
									$newForm['sections'] = [
										'one' => ['name' => 'one', 'content' => ''],
									];
									$newForm['locales'] = [
										'en_GB' => ['name' => 'en_GB', 'content' => ''],
									];
									$newForm['views'] = [];
									$newForm['rules']['access'] = [];
									$newForm['functions'] = [
										['type' => 'display_section', 'name' => 'display_section1', '_event' => 'load']
									];
									
									if(!empty($form['Form']['extras']['fields'])){
										foreach($form['Form']['extras']['fields'] as $k => $field){
											
											if($field['type'] == 'custom'){
												$newForm['views'][$k]['type'] = 'html';
												$newForm['views'][$k]['name'] = 'html'.$k;
												$newForm['views'][$k]['content'] = $field['code'];
											}
											if($field['type'] == 'container'){
												
											}
											$types = ['text', 'password', 'hidden', 'button', 'dropdown', 'checkbox', 'checkbox_group', 'radio', 'textarea', 'file'];
											$types2 = ['text', 'password', 'hidden', 'button', 'select', 'checkbox', 'checkboxes', 'radios', 'textarea', 'file'];
											if(in_array($field['type'], $types)){
												$newForm['views'][$k]['type'] = 'field_'.$types2[array_search($field['type'], $types)];
												$newForm['views'][$k]['name'] = 'field_'.$field['type'].$k;
												$newForm['views'][$k]['params']['name'] = $field['name'];
												$newForm['views'][$k]['params']['id'] = $field['id'];
												$newForm['views'][$k]['params']['value'] = $field['value'];
												$newForm['views'][$k]['label'] = $field['label']['text'];
												$newForm['views'][$k]['params']['placeholder'] = $field['placeholder'];
												$newForm['views'][$k]['options'] = $field['options'];
												$newForm['views'][$k]['description']['text'] = $field['sublabel'];
												$newForm['views'][$k]['params']['rows'] = $field['rows'];
												
												if(!empty($field['validation']['required'])){
													$newForm['views'][$k]['validation']['rules'] = 'required:'.$field['title'];
													
													if($field['type'] == 'checkbox'){
														$newForm['views'][$k]['validation']['rules'] = 'checked:'.$field['title'];
													}
													if($field['type'] == 'checkbox_group' OR $field['type'] == 'radio'){
														$newForm['views'][$k]['validation']['rules'] = 'minChecked[1]:'.$field['title'];
													}
												}
											}
											
											if(!empty($newForm['views'][$k])){
												$newForm['views'][$k]['_section'] = 'one';
											}
										}
									}
									//pr($newForm);die();
									$this->Connection->save($newForm, ['json' => ['params', 'events', 'sections', 'views', 'functions', 'locales', 'rules'], 'alias' => ['title' => 'alias']]);
								}
							}
						}
						//die();
					}
					
					\GApp::session()->flash('success', rl('Forms restored successfully.'));
					$this->redirect(r2('index.php?ext=chronoforms&cont=connections'));
				}
			}
		}
	}
	
	function demos(){
		if($this->data('name')){
			$demo_path = \G2\Globals::ext_path('chronoforms', 'admin').'demos'.DS.$this->data('name').'.cf6bak';
			$data = file_get_contents($demo_path);
			
			$data = str_replace('1cf61_', \G2\L\Config::get('db.prefix'), $data);
			$rows = json_decode($data, true);
			
			$rows[0]['Connection']['id'] = null;
			$rows[0]['Connection']['title'] = null;
			$rows[0]['Connection']['alias'] = null;
			$rows[0]['Connection']['rules'] = json_decode($rows[0]['Connection']['rules'], true);
			$rows[0]['Connection']['locales'] = json_decode($rows[0]['Connection']['locales'], true);
			$rows[0]['Connection']['events'] = json_decode($rows[0]['Connection']['events'], true);
			$rows[0]['Connection']['sections'] = json_decode($rows[0]['Connection']['sections'], true);
			$rows[0]['Connection']['views'] = json_decode($rows[0]['Connection']['views'], true);
			$rows[0]['Connection']['functions'] = json_decode($rows[0]['Connection']['functions'], true);
			$rows[0]['Connection']['params'] = json_decode($rows[0]['Connection']['params'], true);
			
			$this->data['Connection'] = $rows[0]['Connection'];
		}
		$this->edit();
		if(!empty($this->data['Connection']['params']['mode']) AND $this->data['Connection']['params']['mode'] == 'easy'){
			$this->view = 'editeasy';
		}else{
			$this->view = 'edit';
		}
	}
	
	function table(){
		if(is_array($this->data('gcb'))){
			$connection = $this->Connection->where('id', $this->data['gcb'][0])->select('first');
			$table = '#__chronoforms_data_'.$connection['Connection']['alias'];
			$this->redirect(r2('index.php?ext=chronoforms&cont=tables&act=build&gcb[]='.$connection['Connection']['id'].'&table_name='.$this->Connection->dbo->_prefixTable($table)));
			
		}
		\GApp::session()->flash('error', rl('Please select a form.'));
		$this->redirect(r2('index.php?ext=chronoforms&cont=connections'));
	}
	
	function clear_cache(){
		$path = \G2\Globals::get('FRONT_PATH').'cache'.DS;
		$files = \G2\L\Folder::getFiles($path);
		$count = 0;
		foreach($files as $k => $file){
			if(basename($file) != 'index.html'){
				$result = \G2\L\File::delete($file);
				if($result){
					$count++;
				}
			}
		}
		if(function_exists('apc_delete')){
			apc_clear_cache('user');
		}
		$session = \GApp::session();
		$session->flash('info', $count.' '.rl('Cache files deleted successfully.'));
		$this->redirect(r2('index.php?ext=chronoforms'));
	}
	
	function locales_config(){
		$this->set('name', $this->data('name'));
	}
	
	function function_config($type = 'functions'){
		$this->view = \G2\Globals::ext_path('chronofc', 'admin').$type.DS.$this->data('type').DS.$this->data('id').'.php';
		
		if($this->data('params')){
			foreach($this->data('params') as $param){
				$this->set($param, $this->data($param));
			}
		}
		
		$this->set('n', $this->data('count'));
	}
	
	function view_config(){
		$this->function_config('views');
	}
	
	function block_config(){
		$this->set('type', $this->data('name'));
		$this->set('name', $this->data('name'));
		$this->set('count', $this->data('count'));
		
		$this->view = $this->data('block').'_config';
		
		//get users groups for permissions
		$groups = array_merge([['Group' => ['id' => 'owner', 'title' => rl('Owner'), '_depth' => 0]]], $this->Group->select('flat'));
		$this->set('groups', $groups);
	}
	
	function events_config(){
		$this->set('name', $this->data('name'));
		
		//get users groups for permissions
		$groups = array_merge([['Group' => ['id' => 'owner', 'title' => rl('Owner'), '_depth' => 0]]], $this->Group->select('flat'));
		$this->set('groups', $groups);
	}
	
	function sections_config(){
		$this->set('name', $this->data('name'));
		
		//get users groups for permissions
		$groups = array_merge([['Group' => ['id' => 'owner', 'title' => rl('Owner'), '_depth' => 0]]], $this->Group->select('flat'));
		$this->set('groups', $groups);
	}
	
	function preview_section(){
		$this->data['Connection']['alias'] = '';
		$this->data['Connection']['events'] = [];
		$this->set('__connection', $this->data['Connection']);
		
		$this->set('_preview', true);
	}
}
?>