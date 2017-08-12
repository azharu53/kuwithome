<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<?php
	
	$_result = true;
	$_errors = [];
	$_debug = [];
	
	//$data = (array)$this->Parser->parse($function['data_provider'], true);
	
	$rulesMap = [
		'empty' => 'required',
		'checked' => 'required',
		'integer' => 'is_integer',
		'regExp' => 'regex',
		'minChecked' => 'minCount',
		'maxChecked' => 'maxCount',
		'exactChecked' => 'exactCount',
	];
	$this->Parser->debug[$function['name']]['log'] = rl('Automatic validation enabled.');
	
	$connection = $this->Parser->_connection();
	$autoValidations = \GApp::session()->get($connection['alias'].'.fields', []);
	
	if(!empty($function['fields_list'])){
		$fields_list = explode("\n", trim($function['fields_list']));
		$fields_list = array_map('trim', $fields_list);
		
		if($function['fields_selection'] == 'include'){
			foreach($autoValidations as $fname => $frules){
				if(!in_array($fname, $fields_list)){
					unset($autoValidations[$fname]);
				}
			}
		}else if($function['fields_selection'] == 'exclude'){
			foreach($autoValidations as $fname => $frules){
				if(in_array($fname, $fields_list)){
					unset($autoValidations[$fname]);
				}
			}
		}
	}
	
	$validator = new \G2\L\Validate();
	
	if(!empty($autoValidations) AND is_array($autoValidations)){
		foreach($autoValidations as $fname => $frules){
			if($frules === true){
				continue;
			}
			
			$fname = rtrim(str_replace(['[]', '[', ']', '(N)'], ['(N)', '.', '', '.[n]'], $fname), '.');
			
			if(!empty($frules['optional']) AND empty($this->data($fname)) AND $this->data($fname) != '0'){
				continue;
			}else{
				unset($frules['optional']);
			}
			
			foreach($frules as $frule){
				$vfn = $frule['type'];
				
				$vfnParam = null;
				if(strpos($vfn, '[') !== false){
					$vfnps = explode('[', $vfn, 2);
					$vfn = $vfnps[0];
					$vfnParam = rtrim($vfnps[1], ']');
				}
				
				if(!empty($rulesMap[$vfn])){
					$vfn = $rulesMap[$vfn];
				}
				
				if(!method_exists($validator, $vfn)){
					continue;
				}
				
				if(!is_null($vfnParam)){
					if(in_array($vfn, ['match', 'different'])){
						$vfnParam = $this->data($vfnParam);
					}
					$condition = (bool)$validator::$vfn($this->data($fname), $vfnParam);
				}else{
					$condition = (bool)$validator::$vfn($this->data($fname));
				}
				
				if($condition !== true){
				
					$error_message = !empty($frule['prompt']) ? $frule['prompt'] : $function['error_message'];
					$error_message = $this->Parser->parse($error_message, true);
					
					$errors[] = $error_message;
					$_result = false;
					
					if(!empty($function['list_errors'])){
						$this->errors = \G2\L\Arr::setVal($this->errors, str_replace('.[n]', '', $fname), $error_message);
						break;
					}
				}
			}
		}
		
		//\GApp::session()->clear($connection['alias'].'.fields');
		
	}else if(!empty($autoValidations) AND $autoValidations === true){
		//\GApp::session()->clear($connection['alias'].'.fields');
		$_result = true;
		
	}else{
		$_result = false;
		
		if(!empty($function['list_errors'])){
			$this->errors = \G2\L\Arr::setVal($this->errors, $function['name'], $function['error_message']);
		}
	}
	
	\GApp::session()->clear($connection['alias'].'.fields');
	
	$this->set($function['name'], $_result);
	
	if(empty($_result)){
		$this->Parser->fevents[$function['name']]['fail'] = true;
	}else{
		$this->Parser->fevents[$function['name']]['success'] = true;
	}