<?php

defined('_JEXEC') or die;

/**
 * @package Component codoPM for Joomla! 3.0
 * @author codologic
 * @copyright (C) 2013 - codologic
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 * */
class codopm {

    public static $secret = "DEd56g3@34azFfGv";
    public static $path = "";
    public static $xhash = "";
    public static $db_prefix = "";
    public static $db = null;
    public static $config;
    public static $language = "english";
    protected static $trans = false;

    public static function get_lang() {

        //$codopm_trans is declared in all language files
        //For backward compatibility purposes always include english.php
        require 'lang/english.php';

        if (self::$language != "english") {

            //Overwrite english with the new language
            require 'lang/' . self::$language . '.php';
        }

        return $codopm_trans;
    }

    public static function t($index) {

        if (!self::$trans) {

            self::$trans = self::get_lang();
        }

        if (isset(self::$trans[$index])) {

            echo self::$trans[$index];
        } else {

            echo $index; //echo passed if not found
        }
    }

}
