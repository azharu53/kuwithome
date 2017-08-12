<?php
/**
* COMPONENT FILE HEADER
**/
namespace G2\A\E\Chronoforms\C;
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
class Installer extends \G2\L\Controller {
	var $models = array('\G2\A\M\Acl');
	
	function index(){
		//apply updates
		$sql = file_get_contents(\G2\Globals::ext_path('chronoforms', 'admin').'sql'.DS.'install.chronoforms.sql');
		
		$queries = \G2\L\Database::getInstance()->split_sql($sql);
		foreach($queries as $query){
			\G2\L\Database::getInstance()->exec(\G2\L\Database::getInstance()->_prefixTable($query));
		}
		
		\GApp::session()->flash('success', rl('Database tables have been installed.'));
		$this->redirect(r2('index.php?ext=chronoforms&act=clear_cache'));
	}
	
}
?>