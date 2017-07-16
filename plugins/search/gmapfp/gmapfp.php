<?php
    /*
    * Plugin Search GMapFP for Component Google Map for Joomla! 3.x
    * Version J3_1.1P
    * Creation date: Mai 2016
    * Author: Fabrice4821 - www.gmapfp.org
    * Author email: webmaster@gmapfp.org
    * License GNU/GPL
    */

// no direct access
defined('_JEXEC') or die;

require_once JPATH_SITE.'/components/com_gmapfp/router.php';

/**
 * Content Search plugin
 *
 * @package		Joomla.Plugin
 * @subpackage	Search.content
 * @since		1.6
 */
class plgSearchGMapFP extends JPlugin
{
	public function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);
		$this->loadLanguage();
	}

	function onContentSearchAreas()
	{
		static $areas = array(
			'gmapfps' => 'GMAPFP_LIEUX'
			);
			return $areas;
	}

	public function onContentSearch($texte, $phrase = '', $ordering = '', $areas = null)
	{
        $db     = JFactory::getDBO();
		$date	= JFactory::getDate();
		$now	= $date->toSql();
        $nullDate = $db->getNullDate();

		$app	= JFactory::getApplication();
		$tag = JFactory::getLanguage()->getTag();

		if (is_array($areas)) {
			if (!array_intersect($areas, array_keys($this->onContentSearchAreas()))) {
				return array();
			}
		}
	
		// load plugin params info
		$limit = $this->params->def('search_limit',	50);
	
		$texte = trim( $texte );
		if ($texte == '') {
			return array();
		}
	
		//recherche de la version
		$query = "SHOW COLUMNS FROM `#__gmapfp` LIKE 'access'";
        $db->setQuery( $query );
        $result = $db->loadObject();
        if ($result) {
			//version Pro
			$version = 1;
		} else { 
			//version libre
			$version = 0;
		}

		$section = JText::_( 'GMapFP' );

		switch ( $ordering ) {
			case 'alpha':
				$order = 'a.nom ASC';
				break;
	
			case 'category':
				if ($version)
					$order = 'a.nom ASC';
				else
					$order = 'b.title ASC, a.nom ASC';
				break;
	
			case 'popular':
			case 'newest':
			case 'oldest':
			default:
				$order = 'a.nom DESC';
		}

		$where_field = "";
		$search_fields = array();
		if ($version == 1) { //Pro
			switch ($phrase) {
				case 'exact':
					$exact = true; 
					$texte = $db->quote('%' . $db->escape($texte, true) . '%', false);
					$where_field = 'AND parametres LIKE '.$texte;
					break;
				case 'all':
				case 'any':
				default:
					$exact = false; 
					$words = explode( ' ', $texte );
					foreach ($words as $word) {
						$word = $db->quote('%' . $db->escape($word, true) . '%', false);
						$where_field = 'AND parametres LIKE '.$word;
					}
					break;
			}
		
			$query = "SELECT id FROM `#__gmapfp_extension_type` WHERE recherche=1 AND type < 3 AND type > 6";
			$db->setQuery( $query);
			$fields = $db->loadObjectList();
			foreach($fields as $field) {
				if ($exact) {
					$search_fields[] = 'a.field_'.$field->id.' LIKE '.$texte;
				} else {
					foreach ($words as $word) {
						$search_fields[] = 'a.field_'.$field->id.' LIKE '.$word;
					}
				}
			}
			$query = "SELECT id, parametres FROM `#__gmapfp_extension_type` WHERE recherche=1 AND type > 2 AND type < 7 ".$where_field;
			$db->setQuery( $query);
			$fields = $db->loadObjectList();
			foreach($fields as $field) {
				$parametres = explode("\r\n", $field->parametres);
				$cn = 0;
				foreach ($parametres as $parametre) {
					$cn++;
					if ($exact) {
						if (stripos($parametre, trim( $text ))!==false) {
							 $search_fields[] = 'a.field_'.$field->id.' = '.$cn;
							 $search_fields[] = 'a.field_'.$field->id." LIKE '%".$cn."\r\n%'";
						}
					} else {
						foreach ($words as $word) {
							if (stripos($parametre, $word)!==false) {
								 $search_fields[] = 'a.field_'.$field->id.' = '.$cn;
								 $search_fields[] = 'a.field_'.$field->id." LIKE '%".$cn."\r\n%'";
							}
						}
					}
				}
			}
			unset($fields, $field, $cn);
		}

		$wheres = array();
		$where_field = "";
		switch ($phrase) {
			case 'exact':
				$texte		= $db->Quote( '%'.$db->escape( $texte, true ).'%', false );
				$wheres2 	= array();
					$wheres2[] 	= 'a.nom LIKE '.$texte;
					$wheres2[] 	= 'a.adresse LIKE '.$texte;
					$wheres2[] 	= 'a.adresse2 LIKE '.$texte;
					$wheres2[] 	= 'a.ville LIKE '.$texte;
					$wheres2[] 	= 'a.departement LIKE '.$texte;
					$wheres2[] 	= 'a.pay LIKE '.$texte;
					$wheres2[] 	= 'a.horaires_prix LIKE '.$texte;
					if ($version == 0) {
						$wheres2[] 	= 'a.intro LIKE '.$texte;
						$wheres2[] 	= 'a.message LIKE '.$texte;
						$wheres2[] 	= 'a.tel LIKE '.$texte;
						$wheres2[] 	= 'a.tel2 LIKE '.$texte;
						$wheres2[] 	= 'a.fax LIKE '.$texte;
					}
					if ($version == 1) {
						$wheres2[] 	= 'a.introtext LIKE '.$texte;
						$wheres2[] 	= 'a.fulltext LIKE '.$texte;
						$wheres2 = array_merge( $wheres2, $search_fields);
					}
				$where 		= '(' . implode( ') OR (', $wheres2 ) . ')';
				break;
	
			case 'all':
			case 'any':
			default:
				$words = explode( ' ', $texte );
				$wheres = array();
				foreach ($words as $word) {
					$word		= $db->Quote( '%'.$db->escape( $word, true ).'%', false );
					$wheres2 	= array();
					$wheres2[] 	= 'a.nom LIKE '.$word;
					$wheres2[] 	= 'a.adresse LIKE '.$word;
					$wheres2[] 	= 'a.adresse2 LIKE '.$word;
					$wheres2[] 	= 'a.ville LIKE '.$word;
					$wheres2[] 	= 'a.departement LIKE '.$word;
					$wheres2[] 	= 'a.pay LIKE '.$word;
					$wheres2[] 	= 'a.horaires_prix LIKE '.$word;
					if ($version == 0) {
						$wheres2[] 	= 'a.intro LIKE '.$word;
						$wheres2[] 	= 'a.message LIKE '.$word;
						$wheres2[] 	= 'a.tel LIKE '.$word;
						$wheres2[] 	= 'a.tel2 LIKE '.$word;
						$wheres2[] 	= 'a.fax LIKE '.$word;
					}
					if ($version == 1) {
						$wheres2[] 	= 'a.introtext LIKE '.$word;
						$wheres2[] 	= 'a.fulltext LIKE '.$word;
						$wheres2 = array_merge( $wheres2, $search_fields);
					}
					$wheres[] 	= implode( ' OR ', $wheres2 );
				}
				$where = '(' . implode( ($phrase == 'all' ? ') AND (' : ') OR ('), $wheres ) . ')';
				break;
		}
		
		$wheres = array();
		// Filter by access level.
		//if ($access = $this->getState('filter.access')) {
			$user	= JFactory::getUser();
			$groups	= implode(',', $user->getAuthorisedViewLevels());
			$wheresPro[] ='(a.access IN ('.$groups.') or (a.access = ""))';
		//}

		// Filter by language
		if ($app->isSite() && $app->getLanguageFilter()) {
			$wheresPro[] ='a.language in (' . $db->Quote($tag) . ',' . $db->Quote('*') . ')';
		}

        $wheresPro[] = '( a.publish_up = \'\' OR a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )';
        $wheresPro[] = '( a.publish_down = \'\' OR a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )';
        $wheres[] = 'a.published = 1';

		$text   = $db->Quote( '%'.$db->escape( $texte, true ).'%', false );

        switch ($version) {
        	case 1 : //Pro
				$wheres = array_merge( $wheres, $wheresPro);
				$query  = 'SELECT CONCAT_WS(" : ",a.ville,a.nom) AS title, a.created AS created,'
				. ' a.introtext AS text,'
				. ' a.id AS id,'
				. ' "2" AS browsernav'
				. ' FROM #__gmapfp AS a'
				. ' WHERE ' . implode( "\n  AND ", $wheres )
				. ' AND ( '.$where.' )'
				. ' GROUP BY a.id'
				. ' ORDER BY '. $order
				;
				break;
        	case 0 : //version libre
				$query  = 'SELECT CONCAT_WS(" : ",a.ville,a.nom) AS title, 0 AS created,'
				. ' a.intro AS text,'
				. ' b.title AS section,'
				. ' a.id AS id,'
				. ' "2" AS browsernav'
				. ' FROM #__gmapfp AS a'
				. ' INNER JOIN #__categories AS b ON b.id = a.catid'
				. ' WHERE ' . implode( "\n  AND ", $wheres )
				. ' AND ( '.$where.' )'
				. ' GROUP BY a.id'
				. ' ORDER BY '. $order
				;
		}
		$db->setQuery( $query, 0, $limit );
		$rows = $db->loadObjectList();
	
		//die(print_r($query));
		foreach($rows as $key => $row) {
			$rows[$key]->href = 'index.php?option=com_gmapfp&view=gmapfp&layout=article&id='.$row->id;
		}
	
		return $rows;
	}
}
