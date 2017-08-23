<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Propertycontact
 * @author     azharuddin <azharuddin.shaikh53@gmail.com>
 * @copyright  2017 azharuddin
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */
// No direct access
defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');

// Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_propertycontact', JPATH_SITE);
$doc = JFactory::getDocument();
$doc->addScript(JUri::base() . '/media/com_propertycontact/js/form.js');

$user    = JFactory::getUser();
$canEdit = PropertycontactHelpersPropertycontact::canUserEdit($this->item, $user); 
$uid = $user->id;

$db = JFactory::getDbo();



if($uid == 0){
?>
	<div class="row" id="notlogin" style="min-width:600px;min-height:400px;">
		<div class="col-sm-8 col-sm-offset-2 ">
		    <div class="login">
			<form name="btl-formlogin" class="btl-formlogin form-validate" action="<?php echo JRoute::_('index.php', true, ''); ?>" method="post">
				<div id="btl-login-in-process"  ></div>	
				<h3><?php echo JText::_('Login required') ?></h3>
				<div class="btl-error" id="btl-login-error" style="color:red"></div>
				<div class="btl-field form-group">
					<div class="btl-input group-control">
						<input id="btl-input-username" type="text" name="username" class="validate-username required" placeholder="Username" />
					</div>
				</div>
				<div class="btl-field form-group">
					<div class="btl-input group-control">
						<input id="btl-input-password" type="password" class="validate-password required" name="password" alt="password" placeholder="Password"  />
					</div>
				</div>
			
								
				<div class="form-group">
					<button type="submit" name="Submit" class="btn btn-primary btn-block" onclick="return loginAjax()" >Log in </button> 
					<input type="hidden" name="bttask" value="login" /> 
					<input type="hidden" name="return" id="btl-return"	value="" />
					<?php echo JHtml::_('form.token');?>
				</div>
			</form>	
			</div>
			<div class="form-links">
			<ul>
				<li>
					<a href="<?php echo JRoute::_('index.php?option=com_users&view=reset'); ?>" target="_blank">
					Forgot your password?</a>
				</li>
				<li>
					<a href="<?php echo JRoute::_('index.php?option=com_users&view=remind'); ?>" target="_blank">
					Forgot your username?</a>
				</li>
				<li>
					<a href="<?php echo JRoute::_('index.php?option=com_users&view=registration'); ?>" target="_blank">
					Don't have an account?</a>
				</li>
			</ul>
		</div>
		</div>
	</div>
<?php } else { 

		$query ="SELECT fv.* FROM #__fields as f LEFT JOIN #__fields_values as fv "
			."on f.id = fv.field_id WHERE f.context = 'com_users.user' and fv.item_id='".$uid."'";
		$db->setQuery($query);
		$usersfieldstmp = $db->loadObjectlist();
		$usersfields =array();
		foreach($usersfieldstmp as $uf){
			$usersfields[$uf->field_id] =$uf->value;
			
		}
		
?>	
<div class="inquiry-edit front-end-edit" id="afterlogin" style="min-width:600px;min-height:400px;">
	<?php if (!$canEdit) : ?>
		<h3>
			<?php throw new Exception(JText::_('COM_PROPERTYCONTACT_ERROR_MESSAGE_NOT_AUTHORISED'), 403); ?>
		</h3>
	<?php else : ?>
		<?php /* if (!empty($this->item->id)): ?>
			<h1><?php echo JText::sprintf('COM_PROPERTYCONTACT_EDIT_ITEM_TITLE', $this->item->id); ?></h1>
		<?php else: ?>
			<h1><?php echo JText::_('COM_PROPERTYCONTACT_ADD_ITEM_TITLE'); ?></h1>
		<?php endif; */ ?>

		<form id="form-inquiry"
			  action="<?php echo JRoute::_('index.php?option=com_propertycontact&task=inquiry.save'); ?>"
			  method="post" class="form-validate form-horizontal" enctype="multipart/form-data">
			
				<input type="hidden" name="jform[id]" value="<?php echo $this->item->id; ?>" />

				<input type="hidden" name="jform[ordering]" value="<?php echo $this->item->ordering; ?>" />

				<input type="hidden" name="jform[state]" value="<?php echo $this->item->state; ?>" />

				<input type="hidden" name="jform[checked_out]" value="<?php echo $this->item->checked_out; ?>" />

				<input type="hidden" name="jform[checked_out_time]" value="<?php echo $this->item->checked_out_time; ?>" />

				<?php echo $this->form->getInput('created_by'); ?>
				<?php echo $this->form->getInput('modified_by'); ?>
				<?php //echo $this->form->renderField('name'); ?>
				<?php //echo $this->form->renderField('email'); ?>
				<?php ///echo $this->form->renderField('phoneno'); ?>
				<?php //echo $this->form->renderField('propertyid'); ?>
				<?php //echo $this->form->renderField('selluserid'); ?>
				<div class="control-group">
					<div class="control-label"><label class="required" for="jform_name" id="jform_name-lbl">
						Name<span class="star">&nbsp;*</span></label>
					</div>
					<div class="controls">
						<input type="text" aria-required="true" required="" placeholder="Name" class="required" value="<?php echo $usersfields[1]; ?>" id="jform_name" name="jform[name]">
					</div>
				</div>
				<div class="control-group">
					<div class="control-label"><label class="required" for="jform_email" id="jform_email-lbl">
						Email<span class="star">&nbsp;*</span></label>
					</div>
						<div class="controls">
						<input type="email" aria-required="true" required="" placeholder="Email" value="<?php echo $user->email; ?>" id="jform_email" class="validate-email required" name="jform[email]">
						</div>
					</div>
				<div class="control-group">
					<div class="control-label">
					<label class="required" for="jform_phoneno" id="jform_phoneno-lbl">	Phone No 
					<span class="star">&nbsp;*</span></label>
					</div>
					<div class="controls">
					<input type="tel" aria-required="true" required="" placeholder="Phone No" value="<?php echo $usersfields[3]; ?>" id="jform_phoneno" class="required" name="jform[phoneno]">
					</div>
				</div>
				 
				<input type="hidden" name="jform[propertyid]" value="<?php echo JRequest::getVar('proid','0'); ?>" />
				<input type="hidden" name="jform[selluserid]" value="<?php echo JRequest::getVar('uid','0'); ?>" />


				<div class="control-group">
					<div class="controls">

						<?php if ($this->canSave): ?>
							<button type="submit" class="validate btn btn-primary">
								<?php echo JText::_('JSUBMIT'); ?>
							</button>
						<?php endif; ?>
						<a class="btn"
						   href="<?php echo JRoute::_('index.php?option=com_propertycontact&task=inquiryform.cancel'); ?>"
						   title="<?php echo JText::_('JCANCEL'); ?>">
							<?php echo JText::_('JCANCEL'); ?>
						</a>
					</div>
				</div>

				<input type="hidden" name="option" value="com_propertycontact"/>
				<input type="hidden" name="task"  value="inquiryform.save"/>
				<?php echo JHtml::_('form.token'); ?>
		</form>
	<?php endif; ?>
</div>
<?php } ?>