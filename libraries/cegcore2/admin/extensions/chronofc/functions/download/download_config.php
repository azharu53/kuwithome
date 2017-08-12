<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<div class="ui segment tab functions-tab active" data-tab="functions-<?php echo $n; ?>">

	<div class="ui top attached tabular menu small G2-tabs">
		<a class="item active" data-tab="functions-<?php echo $n; ?>-general"><?php el('General'); ?></a>
		<a class="item" data-tab="functions-<?php echo $n; ?>-permissions"><?php el('Permissions'); ?></a>
	</div>
	
	<div class="ui bottom attached tab segment active" data-tab="functions-<?php echo $n; ?>-general">
		<input type="hidden" value="download" name="Connection[functions][<?php echo $n; ?>][type]">
		
		<div class="two fields advanced_conf">
			<div class="field">
				<label><?php el('Name'); ?></label>
				<input type="text" value="" name="Connection[functions][<?php echo $n; ?>][name]">
			</div>
		</div>
		
		<div class="ui segment active" data-tab="functions-<?php echo $n; ?>">
			
			<div class="field">
				<label><?php el('File or directory path'); ?></label>
				<input type="text" value="{path:root}" name="Connection[functions][<?php echo $n; ?>][path]">
			</div>
			
			<div class="two fields">
				
				<div class="field">
					<label><?php el('Direct display extensions'); ?></label>
					<input type="text" value="png,jpg,gif" name="Connection[functions][<?php echo $n; ?>][inline_extensions]">
					<small><?php el('Extensions of this list will be directly displayed instead of asking the user to download.'); ?></small>
				</div>
				
				<div class="field">
					<label><?php el('Auto selection'); ?></label>
					<select name="Connection[functions][<?php echo $n; ?>][selection]" class="ui fluid dropdown">
						<option value="0"><?php el('Disabled - use path'); ?></option>
						<option value="last_modified"><?php el('Last modified'); ?></option>
					</select>
				</div>
			</div>
			
		</div>
		
	</div>
	
	<div class="ui bottom attached tab segment" data-tab="functions-<?php echo $n; ?>-permissions">
		<div class="two fields">
			<div class="field">
				<label><?php el('Owner id value'); ?></label>
				<input type="text" value="" name="Connection[functions][<?php echo $n; ?>][owner_id]">
			</div>
		</div>
		
		<?php $this->view('views.permissions_manager', ['model' => 'Connection[functions]['.$n.']', 'perms' => ['access' => rl('Access')], 'groups' => $this->get('groups')]); ?>
	</div>
	
</div>