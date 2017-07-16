<?php
    /*
    * Module GMapFP for Component Google Map for Joomla! 3.x
    * Version J3.0Pro
    * Creation date: Août 2013
    * Author: Fabrice4821 - www.gmapfp.org
    * Author email: webmaster@gmapfp.org
    * License GNU/GPL
    */

// no direct access
defined('_JEXEC') or die('Restricted access');

class modGMapFPHelper
{
    function getGmapFPRandom($nbre_article, $params)
    {
        $db     = JFactory::getDBO();
        $wheres = $this->getPro($params);

        $query = 'SELECT *,'
            .' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug '
            .' FROM #__gmapfp AS a'
			.' INNER JOIN #__categories AS b on a.catid = b.id'
            .' WHERE ' . implode( "\n  AND ", $wheres )
            .' ORDER BY RAND()'
            .' LIMIT '.$nbre_article
            ;
        $db->setQuery($query);
        $result = $db->loadObjectList();
        if ($db->getErrorNum()) {
            JError::raiseWarning( 500, $db->stderr() );
        }

        return $result;
    }

    function getGmapFPLast($nbre_article, $params)
    {
        $db     = JFactory::getDBO();
        $wheres = $this->getPro($params);

        $query = 'SELECT *,'
            .' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug '
            .' FROM #__gmapfp AS a'
			.' INNER JOIN #__categories AS b on a.catid = b.id'
            .' WHERE ' . implode( "\n  AND ", $wheres )
			.' ORDER BY a.id DESC'
			.' LIMIT '.$nbre_article
            ;
        $db->setQuery($query);
        $result = $db->loadObjectList();
        if ($db->getErrorNum()) {
            JError::raiseWarning( 500, $db->stderr() );
        }

        return $result;
    }

    function getGmapFPSQL($nbre_article, $params)
    {
        $db     = JFactory::getDBO();
        $wheres = $this->getPro($params);
		$wheres[] = $params->get( 'gmapfp_sql' );

        $query = 'SELECT *,'
            .' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(\':\', a.id, a.alias) ELSE a.id END as slug '
            .' FROM #__gmapfp AS a'
			.' INNER JOIN #__categories AS b on a.catid = b.id'
            .' WHERE ' . implode( "\n  AND ", $wheres );
        if ($where) $query .=' AND '.$where;
        $query .=' LIMIT '.$nbre_article;
		
        $db->setQuery($query);
        $result = $db->loadObjectList();
        if ($db->getErrorNum()) {
            JError::raiseWarning( 500, $db->stderr() );
        }

        return $result;
    }
	
	function getPro($params)
	{
		$mainframe 	= JFactory::getApplication(); 
        $db     	= JFactory::getDBO();
        $now    	= JFactory::getDate();
        $nullDate 	= $db->getNullDate();

	    $wheres = array();
        $wheres[] = ' a.published = 1 ';

		if ($params->get( 'Pro', 0)) {
			$wheres[] = '( a.publish_up = \'\' OR a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )';
			$wheres[] = '( a.publish_down = \'\' OR a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )';
		// Filter by language
			if ($mainframe->getLanguageFilter() && $params->get('gmapfp_compa_trad_joom25', 0)) {
				$wheres[] ='a.language in (' . $db->Quote($tag) . ',' . $db->Quote('*') . ')';
				$wheres[] ='b.language in (' . $db->Quote($tag) . ',' . $db->Quote('*') . ')';
			}
		// Filter by access level.
			$user	= JFactory::getUser();
			$groups	= implode(',', $user->getAuthorisedViewLevels());
			$wheres[] ='(a.access IN ('.$groups.') or (a.access = ""))';
			$wheres[] ='(b.access IN ('.$groups.') or (b.access = ""))';
		}
		
		return $wheres;
	}
}
?>
