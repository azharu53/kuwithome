<?php
	/*
	* GMapFP Component Google Map for Joomla! 3.x
	* Version J3.33F
	* Creation date: Août 2015
	* Author: Fabrice4821 - www.gmapfp.org
	* Author email: webmaster@gmapfp.org
	* License GNU/GPL
	*/

defined('_JEXEC') or die(); 
 
$mainframe = JFactory::getApplication(); 

$config = JComponentHelper::getParams('com_gmapfp');
$document   = JFactory::getDocument();

foreach ($this->lieux as $lieu) { 

// insertion du lien canonique pour éviter l'indexation par les robbots des lien comporant le "tmpl=component"
    $link =JRoute::_('index.php?option=com_gmapfp&view=gmapfp&layout=article&id='.$lieu->slug, false);
    $document->addCustomTag( '<link rel="canonical" href="'.$link.'" />');

	$active = $mainframe->getMenu()->getActive();

    if ($lieu->metadesc) {
        $this->document->setDescription( $lieu->metadesc );
    }
	elseif (isset($active->params) and $active->params->get('menu-meta_description'))
	{
		$this->document->setDescription($active->params->get('menu-meta_description'));
	}
	
    if ($lieu->metakey) {
        $this->document->setMetadata('keywords', $lieu->metakey);
    }
	elseif (isset($active->params) and $active->params->get('menu-meta_keywords'))
	{
		$this->document->setMetadata('keywords', $active->params->get('menu-meta_keywords'));
	}

	if ($mainframe->getCfg('MetaTitle') == '1') {
        $this->document->setTitle(@$lieu->ville.' : '.$lieu->nom.' ('.$lieu->title.')');
    }
	
?>
    <div class="gmapfp">
		
    	<?php
        	$this->lieu = $lieu;
			//affichage du détail d'un lieu
			$this->_layout='tmpl';
			echo JViewLegacy::Display('article');
			$this->_layout='default';
		?>
        <div class="gmapfp_message">
			<?php
			if ($config->get('gmapfp_afficher_intro_italique')==1) { ?>
				<span><em><?php echo $lieu->intro; ?></em><?php echo $lieu->message; ?></span><?php ;
			} else { ?>
				<span><?php echo $lieu->intro; echo $lieu->message; ?></span><?php ;
			}?>
        </div >
		<br /><br />
	<div class="clearfix"></div>
	
	<div class="row" style="text-align:center;">
	<div class="col-lg-3" style="padding:15px 15px;width:16%;float:left;">
		<a class="modal_link cboxElement" data-modal-class-name="no_title" data-modal-inner-height="500" data-modal-inner-width="800" href="<?php echo JRoute::_('index.php?option=com_propertycontact&view=inquiryform&Itemid=162'); ?>?ml=1<?php echo '&proid='.$lieu->id.'&uid='.$lieu->userid; ?>" data-modal-done="1"> Contact Seller </a>
	</div>
	<div class="col-lg-3" style="padding:15px 15px;width:15%;float:left;">
		<a href="<?php echo JRoute::_('index.php'); ?>" target="_blank">View details</a>
	</div>
	<div class="col-lg-3" style="padding:15px 15px;width:15%;float:left;">
		<a href="<?php echo JRoute::_('index.php?option=com_wishlist&view=wishlist?Itemid=147'); ?>" target="_blank">Shortlist</a>
	</div>
	<div class="col-lg-3" style="padding:15px 15px;width:15%;float:left;">
		<a href="<?php echo JRoute::_('index.php'); ?>" target="_blank">Report</a>
	</div>
	<div class="col-lg-3"  style="width:30%;padding:15px 15px;float:left;">
	<div class="" style="position:relative;">
	<a href="javascript:void(0);" onclick="jQuery('#share-buttons').toggle();">Share It</a>
	<div id="share-buttons" style="position:absolute;display:none;padding:2s5px 0px;">
		<?php /*
		<a href="http://www.facebook.com/sharer.php?u=https://simplesharebuttons.com" target="_blank">
        <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />
		</a>
		
		<!-- Google+ -->
		<a href="https://plus.google.com/share?url=https://simplesharebuttons.com" target="_blank">
			<img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />
		</a>
		
		<!-- LinkedIn -->
		<a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=https://simplesharebuttons.com" target="_blank">
			<img src="https://simplesharebuttons.com/images/somacro/linkedin.png" alt="LinkedIn" />
		</a>
		
		<!-- Pinterest -->
		<a href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());">
			<img src="https://simplesharebuttons.com/images/somacro/pinterest.png" alt="Pinterest" />
		</a>
		*/
		?>
		<!-- AddToAny BEGIN -->
		<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
		<a class="a2a_dd" href="https://www.addtoany.com/share"></a>
		<a class="a2a_button_facebook"></a>
		<a class="a2a_button_twitter"></a>
		<a class="a2a_button_google_plus"></a>
		</div>
		<script async src="https://static.addtoany.com/menu/page.js"></script>
		<!-- AddToAny END -->
	</div>
	</div>
	</div>
	</div>
    <?php
    //insertion de JComments
      /*$jcomments =  JPATH_SITE.'/components/com_jcomments/jcomments.php';
      if ((file_exists($jcomments))and($this->params->get('gmapfp_jcomments'))) {
       // require_once($jcomments);
        echo '<div style="clear: both;">';
        //echo JComments::showComments($lieu->id, 'com_gmapfp', $lieu->nom);
        echo '</div>';
      }*/
	echo '</div>';
};
 ?>
