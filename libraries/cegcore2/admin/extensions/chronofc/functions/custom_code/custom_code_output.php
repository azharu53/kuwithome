<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<?php
	$result = $this->Parser->parse($function['content'], !empty($function['return']) ? true : false, true);
	
	$this->set($function['name'], $result);