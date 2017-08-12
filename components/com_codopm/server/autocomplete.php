<?php

define('_JEXEC', 'VAL');
defined('_JEXEC') or die;
/**
 * @package Component codoPM for Joomla! 3.0
 * @author codologic
 * @copyright (C) 2013 - codologic
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 * */


/*
 * 
 * Format of JSON required by jquery UI
 * [{"label":"mylabel","value":"myvalue"},...] 
 */

$results = array();

if(isset($_GET['term'])) {

    $terms = $_GET['term'];
    
    if(strpos($terms, ",") !== FALSE) {
        
        $_term = explode(",", $terms);
        $term = trim(end($_term));
    }else{
        
        $term = $terms;
    }
    
    require 'connector.php';
    
    $query = "SELECT name,username FROM " . codopm::$db_prefix . "users "
            . "WHERE (username LIKE :term1 OR name LIKE :term2)";
    $sth = codopm::$db->prepare($query);

    $variable_array = array(
        
        ":term1" => '%'.$term.'%',
        ":term2" => '%'.$term.'%'
    );
    
    $obj = $sth->execute($variable_array);

    $result = $sth->fetchAll();

    foreach($result as $res) {
        
        $label = $res['name'];
        
        if(empty($label)) {
            
            $label = $res['username'];
        }else{
            
            if($res['name'] != $res['username']) {
                
                $label = $res['name'] . " "  . "(".$res['username'].")";
            }
        }
        
        $results[] = array(
            
            "id" => $res['username'],
            "label" => $label,
            "value" => $res['username']
        );
    }
    
}

echo json_encode($results);