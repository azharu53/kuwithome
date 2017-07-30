<?php
/**
 * @copyright	Copyright (c) 2017 homebanner. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

// no direct access
defined('_JEXEC') or die;
?>
<div id="banner" >
   <img src="<?php echo JURI::root(). '/images/banners/banner.jpg' ;?>" alt="banner" width="100%"/>
   <div id="bannerText" >
   
   <h1 data-reactid=".1u7a2b2gydc.0.0.1.0.0.1.0.0">A Beautiful Way to Find your Home</h1>
    <div id="bannerText1"  class="row bannerText1">
		<div class="col-lg-3"> &nbsp; </div>
		<div class="col-lg-6">
		<form class="appnitro"  method="post" action="<?php echo JRoute::_('index.php?option=com_gmapfp&view=gmapfplist&id_perso=0&Itemid=110')?>">
		    <div class="row">
			<div class="col-lg-3">
				<select class="inputbox" name="filtrecategorie" size="1" >
					<option value="8">Test1</option>
					<option value="9">Test2</option>
				</select>
			</div>	
			<div class="col-lg-6">	
				<input id="address" name="address" style="width:90%;" class="element text medium" type="text" maxlength="255" value=""/> 
			</div>
			
			<div class="col-lg-3">	
			<input id="saveForm" class="button_text button btn" type="submit" name="submit" value="Search" />
			</div>
			</div>
			<div class="row">
			<div class="col-lg-3">
				<select id="propertytype" class="inputbox " name="propertytype" size="1">
					<option value="">- Property Type -</option>
					<option value="1"> Apartment </option>
					<option value="2"> Independent House</option>
					<option value="3"> Row House</option>
					<option value="4"> Plot</option>
					<option value="5"> Villa </option>
					<option value="6"> Builder Floor</option>
					<option value="7"> Farm House</option>
					<option value="8"> Penthouse</option>
					<option value="9"> Villament </option>
					<option value="10"> Studio Apartment</option>
					<option value="11"> Service Apartmen</option>
				</select>
			</div>
			<div class="col-lg-3">
				<button class="formidbudget" type="button" onclick="formidbudget1(); return false;" > Budget 	</button>
				<div id="formidbudget" style="position:relative; display:none; z-index:99999;" >
					<div style="position:absolute;" >
						<input name="budgetmin" style="width:32%;" type="number" value="" placeholder="MIN" min="1" /> 
						<input name="budgetmax" style="width:32%;" type="number" value="" placeholder="MAX" min="1"/>
					</div>
				</div>
			</div>
			
			<div class="col-lg-3">	
				<select id="tel" class="inputbox " name="tel" size="1" style="width:100%" >
						<option value=""> BHK </option>
						<option value="1BHK" <?php echo JRequest::getVar('tel') == '1BHK'? "selected='selected'":""; ?> > 1BHK</option>
						<option value="2BHK" <?php echo JRequest::getVar('tel') == '2BHK'? "selected='selected'":""; ?> > 2BHK</option>
						<option value="3BHK" <?php echo JRequest::getVar('tel') == '3BHK'? "selected='selected'":""; ?> > 3BHK</option>
						<option value="4BHK" <?php echo JRequest::getVar('tel') == '4BHK'? "selected='selected'":""; ?> > 4BHK</option>
					</select>
			</div>
			<div class="col-lg-3">	
			
			</div>
			</div>
		</form>
		</div>
	<div class="col-lg-3"> &nbsp;	</div>
	</div>
	</div>

</div>
<style>
#banner{position:relative;  background:green;  padding:10px;}
#banner img{vertical-align:top;}
#bannerText{position:absolute;  bottom:20px;  left:10px; width:100%;  }
#bannerText1{ background-color: rgba(0, 0, 0, 0.5);
    border-top: 1px solid #fe943e;     position: relative;    width:100%; height: 116px;  }

</style>

<script>
	function formidbudget1(){
		if(jQuery('#formidbudget').css('display') == 'none'){
			jQuery('#formidbudget').css('display','block');
			 
		} else {
			jQuery('#formidbudget').css('display','none');
			 
		}
	}
</script>
