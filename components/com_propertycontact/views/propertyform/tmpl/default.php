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


?>

<div class="property-edit front-end-edit">
	<?php if (!$canEdit) : ?>
		<h3>
			<?php throw new Exception(JText::_('COM_PROPERTYCONTACT_ERROR_MESSAGE_NOT_AUTHORISED'), 403); ?>
		</h3>
	<?php else : ?>
		<?php if (!empty($this->item->id)): ?>
			<h1><?php echo JText::sprintf('COM_PROPERTYCONTACT_EDIT_ITEM_TITLE', $this->item->id); ?></h1>
		<?php else: ?>
			<h1><?php echo JText::_('COM_PROPERTYCONTACT_ADD_ITEM_TITLE'); ?></h1>
		<?php endif; ?>

		<form id="form-property"
			  action="<?php echo JRoute::_('index.php?option=com_propertycontact&task=property.save'); ?>"
			  method="post" class="form-validate form-horizontal" enctype="multipart/form-data">
			
			<div class="control-group">
				<div class="controls">

					<?php if ($this->canSave): ?>
						<button type="submit" class="validate btn btn-primary">
							<?php echo JText::_('JSUBMIT'); ?>
						</button>
					<?php endif; ?>
					<a class="btn"
					   href="<?php echo JRoute::_('index.php?option=com_propertycontact&task=propertyform.cancel'); ?>"
					   title="<?php echo JText::_('JCANCEL'); ?>">
						<?php echo JText::_('JCANCEL'); ?>
					</a>
				</div>
			</div>

			<input type="hidden" name="option" value="com_propertycontact"/>
			<input type="hidden" name="task"
				   value="propertyform.save"/>
			<?php echo JHtml::_('form.token'); ?>
		</form>
	<?php endif; ?>
</div>
