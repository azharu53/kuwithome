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

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_wishlist'))
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'));
}

// Include dependancies
jimport('joomla.application.component.controller');

JLoader::registerPrefix('Wishlist', JPATH_COMPONENT_ADMINISTRATOR);
JLoader::register('WishlistHelper', JPATH_COMPONENT_ADMINISTRATOR . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . 'wishlist.php');

$controller = JControllerLegacy::getInstance('Wishlist');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
