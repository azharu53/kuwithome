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

$canEdit = JFactory::getUser()->authorise('core.edit', 'com_propertycontact');

if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_propertycontact'))
{
	$canEdit = JFactory::getUser()->id == $this->item->created_by;
}
?>

<div class="item_fields">

	<table class="table">
		

		<tr>
			<th><?php echo JText::_('COM_PROPERTYCONTACT_FORM_LBL_INQUIRY_NAME'); ?></th>
			<td><?php echo $this->item->name; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_PROPERTYCONTACT_FORM_LBL_INQUIRY_EMAIL'); ?></th>
			<td><?php echo $this->item->email; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_PROPERTYCONTACT_FORM_LBL_INQUIRY_PHONENO'); ?></th>
			<td><?php echo $this->item->phoneno; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_PROPERTYCONTACT_FORM_LBL_INQUIRY_PROPERTYID'); ?></th>
			<td><?php echo $this->item->propertyid; ?></td>
		</tr>

		<tr>
			<th><?php echo JText::_('COM_PROPERTYCONTACT_FORM_LBL_INQUIRY_SELLUSERID'); ?></th>
			<td><?php echo $this->item->selluserid; ?></td>
		</tr>

	</table>

</div>

<?php if($canEdit && $this->item->checked_out == 0): ?>

	<a class="btn" href="<?php echo JRoute::_('index.php?option=com_propertycontact&task=inquiry.edit&id='.$this->item->id); ?>"><?php echo JText::_("COM_PROPERTYCONTACT_EDIT_ITEM"); ?></a>

<?php endif; ?>

<?php if (JFactory::getUser()->authorise('core.delete','com_propertycontact.inquiry.'.$this->item->id)) : ?>

	<a class="btn btn-danger" href="#deleteModal" role="button" data-toggle="modal">
		<?php echo JText::_("COM_PROPERTYCONTACT_DELETE_ITEM"); ?>
	</a>

	<div id="deleteModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="deleteModal" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h3><?php echo JText::_('COM_PROPERTYCONTACT_DELETE_ITEM'); ?></h3>
		</div>
		<div class="modal-body">
			<p><?php echo JText::sprintf('COM_PROPERTYCONTACT_DELETE_CONFIRM', $this->item->id); ?></p>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal">Close</button>
			<a href="<?php echo JRoute::_('index.php?option=com_propertycontact&task=inquiry.remove&id=' . $this->item->id, false, 2); ?>" class="btn btn-danger">
				<?php echo JText::_('COM_PROPERTYCONTACT_DELETE_ITEM'); ?>
			</a>
		</div>
	</div>

<?php endif; ?>