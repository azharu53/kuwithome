<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<?php
	if(empty($function['url']) AND empty($function['parameters']) AND empty($function['event'])){
		return;
	}
	
	if(empty($function['url'])){
		$url = $this->Parser->_url();
	}else{
		$url = $this->Parser->parse($function['url'], true);
	}
	
	$params = [];
	if(strpos($function['parameters'], "\n") !== false OR strpos($function['parameters'], "&") === false){
		$options = explode("\n", $function['parameters']);
		$options = array_map('trim', $options);
		$options = array_filter($options);
		
		foreach($options as $option){
			
			$option = $this->Parser->parse($option, true);
			if(is_array($option)){
				$params = array_replace($params, $option);
				continue;
			}
			
			$option_data = explode('=', $option, 2);
			
			$params[$option_data[0]] = $option_data[1];
		}
	}else{
		$function['parameters'] = $this->Parser->parse($function['parameters'], true);
		parse_str($function['parameters'], $params);
	}
	
	if(!empty($function['event'])){
		$params['event'] = $this->Parser->parse($function['event'], true);
	}
	
	$url = \G2\L\Url::build($url, $params);
	
	$this->Parser->end();
	
	if(empty(\GApp::instance()->tvout)){
		\G2\L\Env::redirect(r2($url));
	}else{
		echo '
		<script type="text/javascript">
			jQuery(document).ready(function($){
				window.location = "'.r2($url, false, true).'";
			});
		</script>';
	}