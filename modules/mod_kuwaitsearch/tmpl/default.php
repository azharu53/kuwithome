<?php
/**
 * @copyright	Copyright (c) 2017 kuwaitsearch. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

// no direct access
defined('_JEXEC') or die;

	$db = JFactory::getDbo();
	$query ="SELECT COUNT(*) FROM #__users ";
	$db->setQuery($query);
	$userscount = $db->loadResult();
	
	$query ="SELECT COUNT(*) FROM #__gmapfp ";
	$db->setQuery($query);
	$sellercount = $db->loadResult();
	
	$query ="SELECT COUNT(*) FROM #__propertycontact_inquiry ";
	$db->setQuery($query);
	$contactcount = $db->loadResult();
?>
<div class="row">
<div class="col-lg-2"></div>
<div class="col-lg-2"></div>
<div class="col-lg-2">
	<div style="float:left; padding:30px 8px 20px 8px;font-size:16px;">
		<a href="<?php echo JRoute::_('index.php?option=com_gmapfp&view=gmapfplist&id_perso=0&Itemid=110')?>" > <?php echo $sellercount; ?> Properties Listed </a>
	</div>
</div>
<div class="col-lg-2">
	<div style="float:left; padding:30px 8px 20px 8px;font-size:16px;">
		<a href="<?php echo JRoute::_('index.php?option=com_gmapfp&view=gmapfplist&id_perso=0&Itemid=110')?>" ><?php echo $userscount; ?> Registered users </a>
	</div>
</div>
<div class="col-lg-4">
<div style="float:left; padding:30px 8px 20px 8px;font-size:16px;">
 <a href="<?php echo JRoute::_('index.php?option=com_gmapfp&view=gmapfplist&id_perso=0&Itemid=110')?>" ><?php echo $contactcount; ?> Sellers Contacted </a>
</div>
<a id="offcanvas-toggler" href="#"><i class="fa fa-bars"></i></a>
<?php
$user = JFactory::getUser();
$uid=$user->id;
if(!$uid){
?>
<div style="float:right; padding:30px 8px 20px 8px;font-size:16px;">
<a class="modal_link cboxElement" data-modal-class-name="no_title" data-modal-inner-height="500" data-modal-inner-width="700" href="/kuwithome/index.php/login?ml=1" data-modal-done="1"> LOG IN </a>
 / <a class="modal_link cboxElement" data-modal-class-name="no_title" data-modal-inner-height="500" data-modal-inner-width="700" href="/kuwithome/index.php/registration?ml=1" data-modal-done="1">SIGN UP</a>
</div>
<?php } ?>
</div>
