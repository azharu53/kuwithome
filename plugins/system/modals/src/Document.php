<?php
/**
 * @package         Modals
 * @version         9.5.4
 * 
 * @author          Peter van Westen <info@regularlabs.com>
 * @link            http://www.regularlabs.com
 * @copyright       Copyright © 2017 Regular Labs All Rights Reserved
 * @license         http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

namespace RegularLabs\Plugin\System\Modals;

defined('_JEXEC') or die;

use JFactory;
use JHtml;
use JRoute;
use JText;
use RegularLabs\Library\Document as RL_Document;

class Document
{
	public static function addHeadStuff()
	{
		// do not load scripts/styles on feeds or print pages
		if (RL_Document::isFeed() || JFactory::getApplication()->input->getInt('print', 0))
		{
			return;
		}

		$params = Params::get();

		if (JFactory::getApplication()->input->getInt('ml', 0) && $params->add_redirect)
		{
			self::addRedirectScript();

			return;
		}

		if ($params->load_jquery)
		{
			JHtml::_('jquery.framework');
		}

		$defaults             = self::getDefaults();
		$defaults['current']  = JText::sprintf('MDL_MODALTXT_CURRENT', '{current}', '{total}');
		$defaults['previous'] = JText::_('MDL_MODALTXT_PREVIOUS');
		$defaults['next']     = JText::_('MDL_MODALTXT_NEXT');
		$defaults['close']    = JText::_('MDL_MODALTXT_CLOSE');
		$defaults['xhrError'] = JText::_('MDL_MODALTXT_XHRERROR');
		$defaults['imgError'] = JText::_('MDL_MODALTXT_IMGERROR');

		$options = [
			'class'                        => $params->class ?: 'modals',
			'defaults'                     => $defaults,
		];

		RL_Document::scriptOptions($options, 'Modals');

		JHtml::script('modals/jquery.touchSwipe.min.js', false, true);
		JHtml::script('modals/jquery.colorbox-min.js', false, true);
		RL_Document::script('modals/script.min.js', ($params->media_versioning ? '9.5.4' : ''));

		if ($params->load_stylesheet)
		{
			RL_Document::style('modals/' . $params->style . '.min.css');
		}
	}

	public static function removeHeadStuff(&$html)
	{
		$params = Params::get();

		// Don't remove if modals class is found
		if (strpos($html, $params->class) !== false)
		{
			return;
		}

		// remove style and script if no items are found
		RL_Document::removeScriptsStyles($html, 'Modals');
		RL_Document::removeScriptsOptions($html, 'Modals');
	}

	public static function addTmpl($url, $iframe = false, $fullpage = false)
	{
		$url = explode('#', $url, 2);

		if (strpos($url['0'], 'ml=1') === false)
		{
			$url['0'] .= (strpos($url['0'], '?') === false) ? '?ml=1' : '&amp;ml=1';
		}

		if ($iframe && strpos($url['0'], 'iframe=1') === false)
		{
			$url['0'] .= (strpos($url['0'], '?') === false) ? '?iframe=1' : '&amp;iframe=1';
		}

		if ($fullpage && strpos($url['0'], 'fullpage=1') === false)
		{
			$url['0'] .= (strpos($url['0'], '?') === false) ? '?fullpage=1' : '&amp;fullpage=1';
		}

		$url = implode('#', $url);

		if (substr($url, 0, 4) != 'http' && strpos($url, 'index.php') === 0 && strpos($url, '/') === false)
		{
			$url = JRoute::_($url);
		}

		return $url;
	}

	public static function setTemplate()
	{
		$params = Params::get();

		JFactory::getApplication()->input->set('tmpl', JFactory::getApplication()->input->getWord('tmpl', $params->tmpl));
	}

	private static function addRedirectScript()
	{
		// Add redirect script
		$script =
			";if( parent.location.href === window.location.href ) {
				loc = window.location.href.replace(/(\?|&)ml=1(&iframe=1(&fullpage=1)?)?(&|$)/, '$1');
				loc = loc.replace(/(\?|&)$/, '');
				if(parent.location.href !== loc) {
					parent.location.href = loc;
				}
			}";

		if (JFactory::getApplication()->input->get('iframe'))
		{
			RL_Document::scriptDeclaration($script);

			return;
		}

		if ( ! $buffer = RL_Document::getBuffer())
		{
			return;
		}

		$buffer =
			'<script type="text/javascript">' . $script . '</script>'
			. $buffer;

		RL_Document::setBuffer($buffer);
	}

	private static function getDefaults()
	{
		$params = Params::get();

		$keyvals = [
			'opacity'        => 0.9,
			'width'          => '',
			'height'         => '',
			'initialWidth'   => 600,
			'initialHeight'  => 450,
			'maxWidth'       => false,
			'maxHeight'      => false,
		];

		$defaults = [];

		foreach ($keyvals as $key => $default)
		{
			$param_key = strtolower($key);

			if ( ! isset($params->{$param_key}) || $params->{$param_key} == $default)
			{
				continue;
			}

			$val = $params->{$param_key};

			$defaults[$key] = $val;
		}

		return $defaults;
	}
}
