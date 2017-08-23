<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Propertycontact
 * @author     azharuddin <azharuddin.shaikh53@gmail.com>
 * @copyright  2017 azharuddin
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Include dependancies
jimport('joomla.application.component.controller');

JLoader::registerPrefix('Propertycontact', JPATH_COMPONENT);
JLoader::register('PropertycontactController', JPATH_COMPONENT . '/controller.php');


// Execute the task.
$controller = JControllerLegacy::getInstance('Propertycontact');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
