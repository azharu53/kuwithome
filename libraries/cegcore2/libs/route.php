<?php
/**
* ChronoCMS version 1.0
* Copyright (c) 2012 ChronoCMS.com, All rights reserved.
* Author: (ChronoCMS.com Team)
* license: Please read LICENSE.txt
* Visit http://www.ChronoCMS.com for regular updates and information.
**/
namespace G2\L;
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
class Route {
	
	public static function translate($url){
		$urlComponents = parse_url($url);
		
		if(!empty($urlComponents['query'])){
			parse_str($urlComponents['query'], $vars);
			if(!empty($vars['ext'])){
				$ext = \GApp::instance()->getMirror('ext', $vars['ext']);
				if($ext != $vars['ext']){
					$url = str_replace('ext='.$vars['ext'], 'ext='.$ext, $url);
				}
			}
			if(!empty($vars['cont'])){
				$cont = \GApp::instance()->getMirror('cont', $vars['cont']);
				if($cont != $vars['cont']){
					$url = str_replace('cont='.$vars['cont'], 'cont='.$cont, $url);
				}
			}
		}
		
		return $url;
	}
	
	public static function _($query = '', $xhtml = false){
		if((bool)Config::get('sef.enabled') === false){
			return $query;
		}
		
		$urlComponents = parse_url($query);
		
		if(empty($urlComponents['query'])){
			return $query;
		}
		
		$result = [];
		if(!empty($urlComponents['path'])){
			$result[] = $urlComponents['path'];
			$result[] = '/';
		}
		
		parse_str($urlComponents['query'], $vars);
		$segments = self::build($vars);
		
		$result[] = implode('/', $segments);
		if(!empty($vars)){
			$result[] = '?';
			$result[] = http_build_query($vars, '', ($xhtml ? '&amp;' : '&'));
		}
		
		if(!empty($urlComponents['fragment'])){
			$result[] = '#';
			$result[] = $urlComponents['fragment'];
		}
		
		return implode('', $result);
	}
	
	public static function build(&$vars){
		$segments = array();
		
		if(!empty($vars['ext'])){
			$segments[] = $vars['ext'];
			unset($vars['ext']);
		}
		if(!empty($vars['cont'])){
			$segments[] = $vars['cont'];
			unset($vars['cont']);
		}
		if(!empty($vars['act'])){
			$segments[] = $vars['act'];
			unset($vars['act']);
		}
		$vps = array('u', 'm', 'f', 't', 'p');
		foreach($vps as $vp){
			if(!empty($vars[$vp])){
				$segments[] = $vp.$vars[$vp];
				unset($vars[$vp]);
			}
		}
		
		if(!empty($vars['alias'])){
			$segments[] = $vars['alias'];
			unset($vars['alias']);
		}
		
		return $segments;
	}
}