<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<?php
	if(empty($section_name) OR $section_name == $view['_section']):
	$views_path = \G2\Globals::ext_path('chronofc', 'admin').'views'.DS.$type.DS.$type.'_config.php';
	$ini_path = \G2\Globals::ext_path('chronofc', 'admin').'views'.DS.$type.DS.$type.'.ini';
	$info = parse_ini_file($ini_path);
?>
<div class="ui segment blue dragged_item">
	<div class="ui label view_title"><?php echo $info['title']; ?></div>
	<div class="ui label black"><?php echo !empty($view) ? $name : $name.$count; ?></div>
	<?php if(!empty($view['label'])): ?>
	<div class="ui label blue basic"><?php echo $view['label']; ?></div>
	<?php endif; ?>
	<?php if(!empty($view['params']['name'])): ?>
	<div class="ui label green"><?php echo $view['params']['name']; ?></div>
	<?php endif; ?>
	<i class="icon write blue link edit_link" data-hint="<?php el('Edit'); ?>"></i>
	<i class="icon sort orange link sort_link" data-hint="<?php el('Sort'); ?>"></i>
	<i class="icon delete red link delete_link" data-hint="<?php el('Delete'); ?>"></i>
	<i class="icon move purple link drag_link" data-hint="<?php el('Move'); ?>"></i>
	<div class="config_area transition hidden">
		<input type="hidden" value="" name="Connection[views][<?php echo $count; ?>][_section]" class="dragged_parent">
		<?php
			
			if(empty($this->data['Connection']['views'][$count])){
				$this->data['Connection']['views'][$count] = ['name' => $name.$count];
			}
			
			$this->view($views_path, ['n' => $count, 'view' => !empty($view) ? $view : []]);
		?>
	</div>
	<?php /*if(!empty($info['preview'])): ?>
		<div class="preview_area">
			<?php
				$preview_path = \G2\Globals::ext_path('chronofc', 'admin').'views'.DS.$type.DS.$type.'_output.php';
				$this->view($preview_path, ['n' => $count, 'view' => !empty($view) ? $view : ['params' => []]]);
			?>
		</div>
	<?php endif;*/ ?>
	<?php
		if(!empty($view['sections'])){
			$vwsections = array_fill_keys(array_map('trim', explode("\n", $view['sections'])), array_values($info['sections'])[0]);
			
		}else if(!empty($info['sections'])){
			$vwsections = $info['sections'];
		}
		if(!empty($info['sections2'])){
			$vwsections = array_merge($vwsections, $info['sections2']);
		}
	?>
	<?php if(!empty($vwsections)): ?>
		<?php foreach($vwsections as $ename => $ecolor): ?>
			<?php $ename = explode(':', $ename)[0]; ?>
			<div class="ui segment view_section draggable-receiver <?php echo $ecolor; ?>" data-name="<?php echo $type.$count; ?>/<?php echo $ename; ?>" data-title="<?php echo $ename; ?>">
				<div class="ui label <?php echo $ecolor; ?>"><?php echo $ename; ?></div>
				<i class="icon minimize black link minimize_link" data-hint="<?php el('Minimize'); ?>"></i>
				<?php if(!empty($views)): ?>
					<?php foreach($views as $view_n => $view): ?>
						<?php $this->view('views.connections.views_config', ['section_name' => $type.$count.'/'.$ename, 'name' => $view['name'], 'type' => $view['type'], 'count' => $view_n, 'view' => $view, 'views' => $views]); ?>
					<?php endforeach; ?>
				<?php endif; ?>
				<button type="button" class="ui button black fluid centered hidden expand_button" style="margin-top:10px;"><?php el('Minimized, click to expand...'); ?></button>
			</div>
		<?php endforeach; ?>
	<?php endif; ?>
</div>
<?php endif; ?>