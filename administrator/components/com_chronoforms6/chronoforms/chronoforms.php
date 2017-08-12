<?php
/**
* COMPONENT FILE HEADER
**/
namespace G2\A\E\Chronoforms;
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
class Chronoforms extends \G2\L\Controller {
	var $models = array('\G2\A\M\Group', '\G2\A\M\Acl', '\G2\A\M\Extension');
	var $libs = array('\G2\L\Request');
	var $helpers= array(
		'\G2\H\Html',
		'\G2\H\Sorter',
		'\G2\H\Paginator',
	);
	
	function _initialize(){
		$this->layout('default');
	}
	
	function editor(){
		
	}
	
	function dynamic(){
		
	}
	
	
	function index(){
		$this->redirect(r2('index.php?ext=chronoforms&cont=connections'));
	}
	
	function settings(){
		$this->data = $this->Extension->where('name', 'chronoforms')->select('first', ['json' => ['settings']]);
		
		//permissions groups
		$groups = $this->Group->fields(['id', 'title'])->select('list');
		$this->set('groups', $groups);
	}
	
	function save_settings(){
		$this->data['Extension']['name'] = 'chronoforms';
		$this->data['Extension']['enabled'] = 1;
		
		$result = $this->Extension->save($this->data['Extension'], ['json' => ['settings']]);
		
		if($result !== false){
			\GApp::session()->flash('success', rl('Settings saved successfully.'));
		}else{
			\GApp::session()->flash('error', rl('Error updating settings.'));
		}
		
		$this->redirect(r2('index.php?ext=chronoforms&act=settings'));
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
	
	function install_feature(){
		$session = \GApp::session();
		
		if(isset($_FILES['upload'])){
			$upload = $_FILES['upload'];
			if(\G2\L\Upload::valid($upload) AND \G2\L\Upload::not_empty($upload) AND \G2\L\Upload::check_type($upload, 'zip')){
				
				$pcs = explode('.', $upload['name']);
				$type = array_shift($pcs).'s';
				
				$target = \G2\Globals::get('FRONT_PATH').'cache'.DS.rand().$upload['name'];
				$result = \G2\L\Upload::save($upload['tmp_name'], $target);
				if(empty($result)){
					$session->flash('error', rl('Upload error.'));
					$this->redirect(r2('index.php?ext=chronoforms&act=install_feature'));
				}
				//file upload, let's extract it
				$zip = new \ZipArchive();
				$handler = $zip->open($target);
				if($handler === true){
					$extract_path = \G2\Globals::ext_path('chronofc', 'admin').$type.DS;
					$zip->extractTo($extract_path);
					$zip->close();
					unlink($target);
					
					$session->flash('success', rl('Feature installed successfully and can be used in the form.'));
					$this->redirect(r2('index.php?ext=chronoforms'));
				}else{
					$session->flash('error', rl('Error extracting file.'));
					$this->redirect(r2('index.php?ext=chronoforms&act=install_feature'));
				}
			}else{
				$session->flash('error', rl('File error.'));
				$this->redirect(r2('index.php?ext=chronoforms&act=install_feature'));
			}
		}
	}
	
	function info(){
		
	}
	
	function _vupdate($v, $update_fld = 'validated'){
		$ext = $this->Extension->where('name', 'chronoforms')->select('first', ['json' => ['settings']]);
		if(empty($ext)){
			$ext = [];
			$ext['Extension']['name'] = 'chronoforms';
			$ext['Extension']['enabled'] = 1;
		}
		$ext['Extension']['settings'][$update_fld] = $v;
		$result = $this->Extension->save($ext['Extension'], ['json' => ['settings']]);
		return $result;
	}
	
	function validateinstall(){
		$domain = str_replace(array('http://', 'https://'), '', \G2\L\Url::domain());
		$this->set('domain', $domain);
		if(!empty($this->data['license_key'])){
			
			$fields = '';
			//$postfields = array();
			unset($this->data['option']);
			unset($this->data['act']);
			foreach($this->data as $key => $value){
				$fields .= "$key=".urlencode($value)."&";
			}
			
			$update_fld = 'validated';
			if($this->data['pid'] == 18){
				$update_fld = 'validated_paypal';
			}
			
			$target_url = 'http://www.chronoengine.com/index.php?option=com_chronocontact&task=extra&chronoformname=validateLicense&ver=6';
			
			$quick_url = $target_url.'&'.rtrim($fields, "& ");
			$response = get_headers($quick_url, 1);
			if(!empty($response['Content-Length']) AND $response['Content-Length'] == '5'){
				$result = $this->_vupdate(1, $update_fld);
				\GApp::session()->flash('success', 'Validated successflly.');
				$this->redirect(r2('index.php?ext=chronoforms'));
			}
			
			if(ini_get('allow_url_fopen')){
				$output = file_get_contents($target_url.'&'.rtrim($fields, "& "));
			}else if(function_exists('curl_init')){
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL, $target_url);
				curl_setopt($ch, CURLOPT_HEADER, 0);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
				curl_setopt($ch, CURLOPT_TIMEOUT, 10);
				curl_setopt($ch, CURLOPT_POSTFIELDS, rtrim($fields, "& "));
				$output = curl_exec($ch);
				curl_close($ch);
			}
			$validstatus = $output;
			
			if($validstatus == 'valid'){
				$result = $this->_vupdate(1, $update_fld);
				
				if($result){
					\GApp::session()->flash('success', 'Validated successflly.');
					$this->redirect(r2('index.php?ext=chronoforms'));
				}else{
					\GApp::session()->flash('error', 'Validation error.');
				}
			}else if($validstatus == 'invalid'){
				$result = $this->_vupdate(0, $update_fld);
				
				\GApp::session()->flash('error', 'Validation error, you have provided incorrect data.');
				//$this->redirect(r2('index.php?ext=chronoforms'));
			}else{
				if(!empty($this->data['seriarl_number'])){
					$blocks = explode("-", trim($this->data['seriarl_number']));
					$hash = md5($this->data['pid'].$this->data['license_key'].str_replace('www.', '', $domain).$blocks[3]);
					if(substr($hash, 0, 7) == $blocks[4]){
						$result = $this->_vupdate(1, $update_fld);
						
						if($result){
							\GApp::session()->flash('success', 'Validated successfully.');
							$this->redirect(r2('index.php?ext=chronoforms'));
						}else{
							\GApp::session()->flash('error', 'Validation error.');
						}
					}else{
						\GApp::session()->flash('error', 'Serial number invalid!');
					}
				}
				\GApp::session()->flash('error', 'Validation error, your server does NOT have the CURL function enabled, please ask your host admin to enable the CURL, or please try again using the Serial number, or please contact us on www.chronoengine.com');
				$this->redirect(r2('index.php?ext=chronoforms'));
			}
		}
	}
}
?>