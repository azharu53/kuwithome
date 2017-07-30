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

jimport('joomla.application.component.controllerform');

/**
 * Wishlists controller class.
 *
 * @since  1.6
 */
class WishlistControllerWishlists extends JControllerForm
{
	/**
	 * Constructor
	 *
	 * @throws Exception
	 */
	public function __construct()
	{
		$this->view_list = 'wishlist';
		parent::__construct();
	}
}
