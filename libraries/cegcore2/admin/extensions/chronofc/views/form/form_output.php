<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<?php
	$params = [];
	
	if(strpos($view['parameters'], 'http') === 0 OR strpos($view['parameters'], '{url:') === 0){
		$url = $this->Parser->parse($view['parameters'], true);
	}else{
		$url = $this->Parser->url('_self');
		
		$view['parameters'] = $this->Parser->parse($view['parameters'], true);
		parse_str($view['parameters'], $params);
	}
	
	if(!empty($view['event'])){
		$params['event'] = $this->Parser->parse($view['event'], true);
	}
	
	if(!empty($view['dynamic'])){
		$params['tvout'] = 'view';
	}
	
	$url = \G2\L\Url::build($url, $params);
	
	if(!empty($view['formid'])){
		$form_id = \G2\L\Str::slug($view['formid']);
	}else{
		$form_id = \G2\L\Str::slug($view['name']);
	}
	
	$tag = 'form';
?>
<?php
	ob_start();
?>
<script type="text/javascript">
	jQuery(document).ready(function($){
		$.G2.forms.ready();
		
		$('body').on('contentChange', function(){
			$.G2.forms.ready();
		});
	});
</script>
<?php
	$jscode = ob_get_clean();
	\GApp::document()->addHeaderTag($jscode);
	\GApp::document()->_('g2.forms');
	
	if(strpos($view['content'], 'data-inputmask=') !== false){
		\GApp::document()->_('jquery.inputmask');
	}
	
	if(strpos($view['content'], 'data-signature=') !== false){
		\GApp::document()->_('signature_pad');
		\GApp::document()->addJsCode('jQuery(document).ready(function($){$.G2.signature_pad.ready();});');
	}
	
	if(strpos($view['content'], 'data-editor=') !== false){
		\GApp::document()->_('tinymce');
		\GApp::document()->addJsCode('jQuery(document).ready(function($){$.G2.tinymce.init();});');
	}
	
	$form_class = (!empty($view['class']) ? $view['class'] : 'ui form').' G2-form'.(!empty($view['dynamic']) ? ' G2-dynamic' : '');
	
	$formtag_attrs = [
		'action' => r2($url),
		'method' => 'post',
		'name' => $form_id,
		'id' => $form_id,
		'data-id' => $form_id,
		'class' => $form_class,
		'data-valloc' => empty($view['validation']['type']) ? 'inline' : $view['validation']['type'],
		'enctype' => 'multipart/form-data',
		'data-dtask' => 'send/self',
		'data-result' => 'replace/self',
	];
	
	if(!empty($view['invisible'])){
		$tag = 'div';
		$formtag_attrs['data-invisible'] = 1;
	}
	
	if(!empty($view['submit_animation'])){
		$formtag_attrs['data-subanimation'] = 1;
	}
	
	if(!empty($view['attrs'])){
		$extra_attrs = explode("\n", $view['attrs']);
		$extra_attrs = array_map('trim', $extra_attrs);
		
		foreach($extra_attrs as $k => $extra_attr){
			$attribute = $this->Parser->parse($extra_attr, true);
			$extra_attr_data = explode(':', $attribute, 2);
			$formtag_attrs[$extra_attr_data[0]] = $extra_attr_data[1];
		}
	}
	
	$attrs = [];
	foreach($formtag_attrs as $formtag_attr => $formtag_attr_value){
		$attrs[] = $formtag_attr.'="'.$formtag_attr_value.'"';
	}
?>
<<?php echo $tag.' '.implode(' ', $attrs); ?>>
	<?php
		if(!empty($view['data_provider'])){
			$data = $this->Parser->parse($view['data_provider'], true);
			
			$content = $this->Parser->parse($view['content'], true);
			
			$DataLoader = new \G2\H\DataLoader();
			$content = $DataLoader->load($content, $data);
			unset($DataLoader);
			
			echo $content;
			
		}else{
			$this->Parser->parse($view['content']);
		}
	?>
	<?php if(!empty($view['validation']['type']) AND $view['validation']['type'] != 'inline'): ?>
	<div class="ui message error"></div>
	<?php endif; ?>
</<?php echo $tag; ?>>