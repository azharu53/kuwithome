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
		<input type="hidden" value="display_section" name="Connection[functions][<?php echo $n; ?>][type]">
		
		<div class="two fields advanced_conf">
			<div class="field">
				<label><?php el('Name'); ?></label>
				<input type="text" value="" name="Connection[functions][<?php echo $n; ?>][name]">
			</div>
		</div>
		
		<div class="ui segment active" data-tab="functions-<?php echo $n; ?>">
			
			<div class="two fields">
				<div class="field">
					<label><?php el('Sections names'); ?></label>
					<textarea rows="3" name="Connection[functions][<?php echo $n; ?>][sections]">one</textarea>
				</div>
				
				<div class="field">
					<label><?php el('Container type'); ?></label>
					<select name="Connection[functions][<?php echo $n; ?>][display_type]" class="ui fluid dropdown">
						<option value="form"><?php el('Form'); ?></option>
						<option value="div"><?php el('Div .ui.form'); ?></option>
						<option value="pure"><?php el('None'); ?></option>
					</select>
					<small><?php el('In all cases this should be set to "Form", unless you do not want a form element added, for example when loading dynamic content into an existing form.'); ?></small>
				</div>
			</div>
			
			<div class="ui header dividing"><?php el('Form settings'); ?></div>
			
			<div class="two fields">
				<div class="field">
					<label><?php el('Data provider'); ?></label>
					<input type="text" value="" name="Connection[functions][<?php echo $n; ?>][data_provider]">
				</div>
				<div class="field">
					<label><?php el('Validation messages'); ?></label>
					<select name="Connection[functions][<?php echo $n; ?>][validation][type]" class="ui fluid dropdown">
						<option value="inline"><?php el('Inline tooltips'); ?></option>
						<option value="message"><?php el('Errors list below form'); ?></option>
					</select>
				</div>
			</div>
			
			<div class="two fields">
				<div class="four wide field">
					<label><?php el('Event'); ?></label>
					<input type="text" value="submit" name="Connection[functions][<?php echo $n; ?>][event]">
				</div>
				
				<div class="twelve wide field">
					<label><?php el('Action URL and/or parameters'); ?></label>
					<input type="text" value="" name="Connection[functions][<?php echo $n; ?>][parameters]">
				</div>
			</div>
			
			<div class="three fields">
				
				<div class="field">
					<label><?php el('AJAX submit'); ?></label>
					<select name="Connection[functions][<?php echo $n; ?>][dynamic]" class="ui fluid dropdown">
						<option value=""><?php el('No'); ?></option>
						<option value="1"><?php el('Yes'); ?></option>
					</select>
				</div>
				
				<div class="field">
					<label><?php el('Invisible form'); ?></label>
					<select name="Connection[functions][<?php echo $n; ?>][invisible]" class="ui fluid dropdown">
						<option value=""><?php el('No'); ?></option>
						<option value="1"><?php el('Yes'); ?></option>
					</select>
					<small class="field-desc"><?php el('When enabled, the form tag will not be available until the page is loaded.'); ?></small>
				</div>
				
				<div class="field">
					<label><?php el('KeepAlive'); ?></label>
					<select name="Connection[functions][<?php echo $n; ?>][keepalive]" class="ui fluid dropdown">
						<option value=""><?php el('No'); ?></option>
						<option value="1"><?php el('Yes'); ?></option>
					</select>
					<small class="field-desc"><?php el('When enabled, the user session will not expire when the form is opened.'); ?></small>
				</div>
			</div>
			<div class="two fields">
				<div class="field">
					<label><?php el('Submit animation'); ?></label>
					<select name="Connection[functions][<?php echo $n; ?>][submit_animation]" class="ui fluid dropdown">
						<option value="1"><?php el('Yes'); ?></option>
						<option value=""><?php el('No'); ?></option>
					</select>
					<small><?php el('When enabled, the form will display a loading icon when its submitting the data to server.'); ?></small>
				</div>
			</div>
			<div class="two fields">
				<div class="field">
					<label><?php el('Class'); ?></label>
					<input type="text" value="ui form" name="Connection[functions][<?php echo $n; ?>][class]">
					<small class="field-desc"><?php el('A class to apply to your form, changing this may affect your form appearance.'); ?></small>
				</div>
				<div class="field">
					<label><?php el('Form ID'); ?></label>
					<input type="text" value="" placeholder="<?php el('Auto'); ?>" name="Connection[functions][<?php echo $n; ?>][formid]">
				</div>
			</div>
			
			<div class="field">
				<label><?php el('Form tag attributes'); ?></label>
				<textarea rows="3" name="Connection[functions][<?php echo $n; ?>][attrs]" placeholder="<?php el('Multiline list of attributes'); ?>"></textarea>
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