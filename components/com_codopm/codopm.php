<?php

/**
 * @package Component codoPM for Joomla! 3.0
 * @author codologic
 * @copyright (C) 2013 - codologic
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 * */
defined('_JEXEC') or die;

require 'arg.php';


$user = JFactory::getUser();

$jversion = new JVersion();

$ver = $jversion->RELEASE;
$list = explode(".", $ver);

$version = (int) $list[0];
$doc = JFactory::getDocument();

if ($version < 3) {

    $doc->addScript("http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js");
}


//generate xhash
codopm::$xhash = md5($user->id . codopm::$secret);

function build_paths() {

    if (@$_SERVER["HTTPS"] == "on") {
        $protocol = "https://";
    } else {
        $protocol = "http://";
    }

    $sn = $_SERVER['SCRIPT_NAME'];
    $sn = str_replace("index.php", "components/com_codopm/", $sn);

    return $protocol . $_SERVER['HTTP_HOST'] . $sn;
}

codopm::$path = build_paths();

$doc->addStyleSheet(codopm::$path . "client/css/app.css");
$doc->addStyleSheet(codopm::$path . "client/css/flick/jquery-ui-1.10.3.custom.min.css");

if ($user->id == 0) {

    require "error.php";
} else {
    
    if (isset($_GET['to'])) {
        $to = $_GET['to'];
    } else {
        $to = '';
    }

    echo '
    <script>
    var codopm={};
    codopm.path="' . codopm::$path . '";
    codopm.from="' . $user->id . '";
    codopm.xhash="' . codopm::$xhash . '";
 
    </script>';

    require "start.php";
}



