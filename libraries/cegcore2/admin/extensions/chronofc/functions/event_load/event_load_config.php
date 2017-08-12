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
		<input type="hidden" value="event_load" name="Connection[functions][<?php echo $n; ?>][type]">
		
		<div class="two fields advanced_conf">
			<div class="field">
				<label><?php el('Name'); ?></label>
				<input type="text" value="" name="Connection[functions][<?php echo $n; ?>][name]">
			</div>
		</div>
		
		<div class="ui segment active" data-tab="functions-<?php echo $n; ?>">
			
			<div class="two fields">
				<div class="field">
					<label><?php el('Event name'); ?></label>
					<input type="text" value="load" name="Connection[functions][<?php echo $n; ?>][event_name]">
				</div>
				
				<div class="field">
					<label><?php el('Stop processing after switching'); ?></label>
					<select name="Connection[functions][<?php echo $n; ?>][stop]" class="ui fluid dropdown">
						<option value="1"><?php el('Yes'); ?></option>
						<option value="0"><?php el('No'); ?></option>
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