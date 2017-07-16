<?php
    /*
    * Module GMapFP for Component Google Map for Joomla! 3.x
    * Version J3.2Pro
    * Creation date: Octobre 2013
    * Author: Fabrice4821 - www.gmapfp.org
    * Author email: webmaster@gmapfp.org
    * License GNU/GPL
    */

// no direct access
defined('_JEXEC') or die('Restricted access'); 

//Insertion des entêtes GMapFP si non déjà fait.
if (!defined( '_JOS_GMAPFP_CSS' ))
{
    /** verifi que la fonction n'est défini qu'une faois */
    define( '_JOS_GMAPFP_CSS', 1 );
    
	JHtml::_('stylesheet', JURI::base().'components/com_gmapfp/views/gmapfp/main_gmapfp.css', array(), true);
	JHtml::_('stylesheet', JURI::base().'components/com_gmapfp/views/gmapfp/gmapfp.css', array(), true);
}

?>
<table width="95%" border="0" cellspacing="0" cellpadding="1" align="center" class="gmapfp<?php echo $moduleclass_sfx; ?>">
<?php foreach($gmapfps as $gmapfp) {?>
    <tr>
        <td>
            <a  class='gmafp_link_module' target="_parent" href="<?php echo JRoute::_(GMapFPHelperRoute::getArticleRoute($gmapfp->slug)) ?>" title="<?php echo JText::_('gmapfp_more_infos') ?>">
                <?php
					if ($gmapfp->img!=null) 
						if ($params->get('Pro', 0)) {
							echo '<img style="float:left; height:'.$params->get('gmapfp_height_picture' ,'40').'px;" src='.JURI::base().'images/gmapfp/thumbsGMap/'.$gmapfp->img.' />';
						} else {
							echo '<img style="float:left; height:'.$params->get('gmapfp_height_picture' ,'40').'px;" src='.JURI::base().'images/gmapfp/'.$gmapfp->img.' />';
						};
					echo '<label> &nbsp; '.$gmapfp->nom.'</label>'; 
                ?>
            </a>
        </td>
    </tr>
<?php } ?>
</table>
