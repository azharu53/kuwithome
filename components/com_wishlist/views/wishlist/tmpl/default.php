<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Wishlist
 * @author     azharuddin <azharuddin.shaikh53@gmail.com>
 * @copyright  2017 azharuddin
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */
// No direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$user       = JFactory::getUser();
$userId     = $user->get('id');
$listOrder  = $this->state->get('list.ordering');
$listDirn   = $this->state->get('list.direction');
$canCreate  = $user->authorise('core.create', 'com_wishlist') && file_exists(JPATH_COMPONENT . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'forms' . DIRECTORY_SEPARATOR . 'wishlistsform.xml');
$canEdit    = $user->authorise('core.edit', 'com_wishlist') && file_exists(JPATH_COMPONENT . DIRECTORY_SEPARATOR . 'models' . DIRECTORY_SEPARATOR . 'forms' . DIRECTORY_SEPARATOR . 'wishlistsform.xml');
$canCheckin = $user->authorise('core.manage', 'com_wishlist');
$canChange  = $user->authorise('core.edit.state', 'com_wishlist');
$canDelete  = $user->authorise('core.delete', 'com_wishlist');
?>

<form action="<?php echo JRoute::_('index.php?option=com_wishlist&view=wishlist'); ?>" method="post"
      name="adminForm" id="adminForm">

	
	<table class="table table-striped" id="wishlistsList" width="100%">
		<thead>
		<tr>
			<?php if (isset($this->items[0]->state)): ?>
				<th width="5%">
				<?php //echo JHtml::_('grid.sort', 'JPUBLISHED', 'a.state', $listDirn, $listOrder); ?>
				</th>
				<?php endif; ?>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_WISHLIST_WISHLIST_ID', 'a.id', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_WISHLIST_WISHLIST_USERID', 'a.userid', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_WISHLIST_WISHLIST_PROPERTY_ID', 'a.property_id', $listDirn, $listOrder); ?>
				</th>
				<?php if ($canEdit || $canDelete): ?>
				<th class="center">
				<?php echo JText::_('COM_WISHLIST_WISHLIST_ACTIONS'); ?>
				</th>
				<?php endif; ?>
		</tr>
		</thead>
		<tfoot>
		<tr>
			<td colspan="<?php echo isset($this->items[0]) ? count(get_object_vars($this->items[0])) : 10; ?>">
				<?php echo $this->pagination->getListFooter(); ?>
			</td>
		</tr>
		</tfoot>
		<tbody>
		<?php if (count($this->items) > 0 ){ foreach ($this->items as $i => $item) : ?>
			<?php $canEdit = $user->authorise('core.edit', 'com_wishlist'); ?>

							<?php if (!$canEdit && $user->authorise('core.edit.own', 'com_wishlist')): ?>
					<?php $canEdit = JFactory::getUser()->id == $item->created_by; ?>
				<?php endif; ?>

			<tr class="row<?php echo $i % 2; ?>">

				<?php if (isset($this->items[0]->state)) : ?>
					<?php $class = ($canChange) ? 'active' : 'disabled'; ?>
					<td class="center">
						<!-- <a class="btn btn-micro <?php echo $class; ?>" href="<?php echo ($canChange) ? JRoute::_('index.php?option=com_wishlist&task=wishlists.publish&id=' . $item->id . '&state=' . (($item->state + 1) % 2), false, 2) : '#'; ?>">
						<?php if ($item->state == 1): ?>
							<i class="icon-publish"></i>
						<?php else: ?>
							<i class="icon-unpublish"></i>
						<?php endif; ?>
						</a>
						-->
					</td>
				<?php endif; ?>
				<td>
				<?php if (isset($item->checked_out) && $item->checked_out) : ?>
					<?php echo JHtml::_('jgrid.checkedout', $i, $item->uEditor, $item->checked_out_time, 'wishlist.', $canCheckin); ?>
				<?php endif; ?>
				<a href="<?php echo JRoute::_('index.php?option=com_wishlist&view=wishlists&id='.(int) $item->id); ?>">
				<?php echo $this->escape($item->id); ?></a>
				</td>
				<td>
					<?php echo $item->userid; ?>
				</td>
				<td>
					<?php echo $item->property_id; ?>
				</td>
				<?php if ($canEdit || $canDelete): ?>
					<td class="center">
						<?php if ($canEdit): ?>
							<a href="<?php echo JRoute::_('index.php?option=com_wishlist&task=wishlistsform.edit&id=' . $item->id, false, 2); ?>" class="btn btn-mini" type="button"><i class="icon-edit" ></i></a>
						<?php endif; ?>
						<?php if ($canDelete): ?>
							<a href="<?php echo JRoute::_('index.php?option=com_wishlist&task=wishlistsform.remove&id=' . $item->id, false, 2); ?>" class="btn btn-mini delete-button" type="button">Delete<i class="icon-trash" ></i></a>
						<?php endif; ?>
					</td>
				<?php endif; ?>
			</tr>
		<?php endforeach;
		} else {
			?>
			<tr><td colspan="4"><h3 style="text-align:center;"><?php echo 'No Wishlish Available' ?></h3></td></tr>
			<?php 
		}
		?>
		</tbody>
	</table>

	<?php if ($canCreate) : ?>
		<a href="<?php echo JRoute::_('index.php?option=com_wishlist&task=wishlistsform.edit&id=0', false, 0); ?>"
		   class="btn btn-success btn-small"><i
				class="icon-plus"></i>
			<?php echo JText::_('COM_WISHLIST_ADD_ITEM'); ?></a>
	<?php endif; ?>

	<input type="hidden" name="task" value=""/>
	<input type="hidden" name="boxchecked" value="0"/>
	<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>"/>
	<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>"/>
	<?php echo JHtml::_('form.token'); ?>
</form>

<?php if($canDelete) : ?>
<script type="text/javascript">

	jQuery(document).ready(function () {
		jQuery('.delete-button').click(deleteItem);
	});

	function deleteItem() {

		if (!confirm("<?php echo JText::_('COM_WISHLIST_DELETE_MESSAGE'); ?>")) {
			return false;
		}
	}
</script>
<?php endif; ?>
