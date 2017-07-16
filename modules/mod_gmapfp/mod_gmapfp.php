<?php
    /*
    * Module GMapFP for Component Google Map for Joomla! 3.x
    * Version J3.2Pro
    * Creation date: Octobre 2013
    * Author: Fabrice4821 - www.gmapfp.org
    * Author email: webmaster@gmapfp.org
    * License GNU/GPL
    */

defined('_JEXEC') or die;

// Include the syndicate functions only once
require_once __DIR__ . '/helper.php';
require_once (JPATH_SITE . '/components/com_gmapfp/helpers/route.php');

$helper = new modGMapFPHelper;
$params->set('Pro', file_exists(JPATH_BASE."/components/com_gmapfp/libraries/geometa.js"));

$nbre_article = $params->get( 'gmapfp_nbre_article', 5 );

switch ($params->get( 'gmapfp_action' )){
case '1':
    $gmapfps   = $helper->getGMapFPLast($nbre_article, $params);
    break;
case '2':
    $gmapfps   = $helper->getGMapFPSQL($nbre_article, $params);
    break;
default:
    //$gmapfp   = modGMapFPHelper::getGMapFP($params->get( 'id', 0 ));
    $gmapfps   = $helper->getGMapFPRandom($nbre_article, $params);
};

$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));

if ( $gmapfps && $gmapfps[0]->id ) {
    $layout = JModuleHelper::getLayoutPath('mod_gmapfp', 'default'.$params->get('target'));
    $tabcnt = 0;
    require($layout);
}