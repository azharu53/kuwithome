<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<?php
	if(empty($event_name) OR $event_name == $function['_event']):
	$views_path = \G2\Globals::ext_path('chronofc', 'admin').'functions'.DS.$type.DS.$type.'_config.php';
	$ini_path = \G2\Globals::ext_path('chronofc', 'admin').'functions'.DS.$type.DS.$type.'.ini';
	$info = parse_ini_file($ini_path);
?>
<div class="ui segment blue dragged_item">
	<div class="ui label function_title"><?php echo $info['title']; ?></div>
	<div class="ui label black"><?php el('Name:'); ?><div class="detail"><?php echo !empty($function) ? $name : $name.$count; ?></div></div>
	<?php if(!empty($function['label'])): ?>
	<div class="ui label blue basic"><?php echo $function['label']; ?></div>
	<?php endif; ?>
	<i class="icon write blue link edit_link" data-hint="<?php el('Edit'); ?>"></i>
	<i class="icon sort orange link sort_link" data-hint="<?php el('Sort'); ?>"></i>
	<i class="icon delete red link delete_link" data-hint="<?php el('Delete'); ?>"></i>
	<i class="icon move purple link drag_link" data-hint="<?php el('Move'); ?>"></i>
	<div class="config_area transition hidden">
		<input type="hidden" value="" name="Connection[functions][<?php echo $count; ?>][_event]" class="dragged_parent">
		<?php
			
			if(empty($this->data['Connection']['functions'][$count])){
				$this->data['Connection']['functions'][$count] = ['name' => $name.$count];
			}
			
			$this->view($views_path, ['n' => $count, 'function' => !empty($function) ? $function : []]);
		?>
	</div>
	<?php $func_name = !empty($function) ? $function['name'] : $type.$count; ?>
	<?php
		if(!empty($function['events'])){
			$fnevents = array_fill_keys(array_map('trim', explode(',', $function['events'])), array_values($info['events'])[0]);
			
		}else if(!empty($info['events'])){
			$fnevents = $info['events'];
		}
	?>
	<?php if(!empty($fnevents)): ?>
		<?php foreach($fnevents as $ename => $ecolor): ?>
			<div class="ui segment function_event draggable-receiver <?php echo $ecolor; ?>" data-name="<?php echo $func_name; ?>/<?php echo $ename; ?>">
				<div class="ui label <?php echo $ecolor; ?>"><?php echo $ename; ?></div>
				<?php if(!empty($functions)): ?>
					<?php foreach($functions as $function_n => $function): ?>
						<?php $this->view('views.connections.functions_config', ['event_name' => $func_name.'/'.$ename, 'name' => $function['name'], 'type' => $function['type'], 'count' => $function_n, 'function' => $function, 'functions' => $functions]); ?>
					<?php endforeach; ?>
				<?php endif; ?>
			</div>
		<?php endforeach; ?>
	<?php endif; ?>
</div>
<?php endif; ?>