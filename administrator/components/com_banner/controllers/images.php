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

jimport('joomla.application.component.controllerform');

/**
 * Images controller class.
 *
 * @since  1.6
 */
class BannerControllerImages extends JControllerForm
{
	/**
	 * Constructor
	 *
	 * @throws Exception
	 */
	public function __construct()
	{
		$this->view_list = 'imagess';
		parent::__construct();
	}
}
