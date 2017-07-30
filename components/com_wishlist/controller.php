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

jimport('joomla.application.component.controller');

/**
 * Class WishlistController
 *
 * @since  1.6
 */
class WishlistController extends JControllerLegacy
{
	/**
	 * Method to display a view.
	 *
	 * @param   boolean $cachable  If true, the view output will be cached
	 * @param   mixed   $urlparams An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
	 *
	 * @return  JController   This object to support chaining.
	 *
	 * @since    1.5
	 */
	public function display($cachable = false, $urlparams = false)
	{
        $app  = JFactory::getApplication();
        $view = $app->input->getCmd('view', 'wishlist');
		$app->input->set('view', $view);

		parent::display($cachable, $urlparams);

		return $this;
	}
	
	/**********  Ajax Save *************/
	
	function ajaxsave() {
		// Get a db connection.
		$db = JFactory::getDbo();

		// Create a new query object.
		$query = $db->getQuery(true);
		
		$query ="SELECT MAX(ordering) FROM #__wishlist WHERE userid ='".$_GET['uid']."'";
		$db->setQuery($query);
		$count = $db->loadResult();
	 
		$query = "INSERT INTO #__wishlist (`ordering`, `state`, `created_by`, `modified_by`, `userid`, `property_id`) 
								VALUES ( '".($count + 1)."', '1', '".$_GET['uid']."', '".$_GET['uid']."', '".$_GET['uid']."', '".$_GET['pid']."')";
		$db->setQuery($query);
		$db->execute();
		die();
		
	}
	
	function ajaxdelete() {
		// Get a db connection.
		$db = JFactory::getDbo();
		// Create a new query object.
		$query = $db->getQuery(true);
		echo $query = "DELETE FROM #__wishlist WHERE property_id ='".$_GET['pid']."'";
		$db->setQuery($query);
		$db->execute();
		die();
		
	}
	
	/**********  Ajax Save *************/
}
