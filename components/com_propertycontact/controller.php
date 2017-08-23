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

jimport('joomla.application.component.controller');

/**
 * Class PropertycontactController
 *
 * @since  1.6
 */
class PropertycontactController extends JControllerLegacy
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
        $view = $app->input->getCmd('view', 'enquiry');
		$app->input->set('view', $view);

		parent::display($cachable, $urlparams);

		return $this;
	}
	
	
	public function ajaxlogin(){
		$mainframe = JFactory::getApplication('site');
		
		//JRequest::checkToken() or self::ajaxResponse('$error$'.JText::_('JINVALID_TOKEN'));

		if ($return = JRequest::getVar('return', '', 'method', 'base64')) {
			$return = base64_decode($return);
			if (!JURI::isInternal($return)) {
				$return = '';
			}
		}		
		$options = array();
		
		$options['remember'] = JRequest::getBool('remember', false);
		
		$options['return'] = $return;

		$credentials = array();
		
		$credentials['username'] = JRequest::getVar('username', '', 'method', 'username');
		
		$credentials['password'] = JRequest::getString('passwd', '', 'post', JREQUEST_ALLOWRAW);
		
		//preform the login action
		$error = $mainframe->login($credentials, $options);
		
		self::ajaxResponse($error);
	}
	
	public static function ajaxResponse($message){
		$obLevel = ob_get_level();
		if($obLevel){
			while ($obLevel > 0 ) {
				ob_end_clean();
				$obLevel --;
			}
		}else{
			ob_clean();
		}
		echo $message;
		die;
	}
}
