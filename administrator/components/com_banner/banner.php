<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Banner
 * @author     azharuddin <azharuddin.shaikh53@gmail.com>
 * @copyright  2017 azharuddin
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_banner'))
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'));
}

// Include dependancies
jimport('joomla.application.component.controller');

JLoader::registerPrefix('Banner', JPATH_COMPONENT_ADMINISTRATOR);
JLoader::register('BannerHelper', JPATH_COMPONENT_ADMINISTRATOR . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . 'banner.php');

$controller = JControllerLegacy::getInstance('Banner');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
