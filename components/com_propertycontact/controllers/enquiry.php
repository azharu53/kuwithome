<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Propertycontact
 * @author     azharuddin <azharuddin.shaikh53@gmail.com>
 * @copyright  2017 azharuddin
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

/**
 * Enquiry list controller class.
 *
 * @since  1.6
 */
class PropertycontactControllerEnquiry extends PropertycontactController
{
	/**
	 * Proxy for getModel.
	 *
	 * @param   string  $name    The model name. Optional.
	 * @param   string  $prefix  The class prefix. Optional
	 * @param   array   $config  Configuration array for model. Optional
	 *
	 * @return object	The model
	 *
	 * @since	1.6
	 */
	public function &getModel($name = 'Enquiry', $prefix = 'PropertycontactModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));

		return $model;
	}
}
