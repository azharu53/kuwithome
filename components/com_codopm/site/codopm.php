<?php
/**
 * @package Component codoPM for Joomla! 3.0
 * @author codologic
 * @copyright (C) 2013 - codologic
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// Added for Joomla 3.0
if(!defined('DS')){
	define('DS',DIRECTORY_SEPARATOR);
};

// Set the component css/js
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_codopm/assets/css/codopm.css');

// Require helper file
JLoader::register('CodopmHelper', dirname(__FILE__) . DS . 'helpers' . DS . 'codopm.php');

// import joomla controller library
jimport('joomla.application.component.controller');

// Get an instance of the controller prefixed by Codopm
$controller = JControllerLegacy::getInstance('Codopm');

// Perform the request task
$controller->execute(JRequest::getCmd('task'));

// Redirect if set by the controller
$controller->redirect();

