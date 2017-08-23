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
		

	</table>

</div>

