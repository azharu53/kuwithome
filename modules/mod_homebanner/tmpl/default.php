<?php
/**
 * @copyright	Copyright (c) 2017 homebanner. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

// no direct access
defined('_JEXEC') or die;
?>
<div id="banner">
   <img src="<?php echo JURI::root(). '/images/banners/banner.jpg' ;?>" alt="banner" width="100%"/>
   <div id="bannerText">
   <h1 data-reactid=".1u7a2b2gydc.0.0.1.0.0.1.0.0">A Beautiful Way to Find your Home</h1>
    <div id="bannerText1">
<form class="appnitro"  method="post" action="<?php echo  JRoute::_('index.php?option=com_gmapfp&view=gmapfplist'); ?>">
<input id="address" name="address" class="element text medium" type="text" maxlength="255" value=""/> 


<select class="element select medium"> 
<option value="" selected="selected">- Budget -</option>
<option value="" >
</option>
</select>
<input name="budgetmin" class="element text medium" type="number" value="" placeholder="MIN" min="1" /> 
<input name="budgetmax" class="element text medium" type="number" value="" placeholder="MAX" min="1"/>

<br />
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

 
		
		
<select class="element select medium" id="element_4" name="element_4"> 
<option value="" selected="selected"></option>
<option value="1" >First option</option>
<option value="2" >Second option</option>
<option value="3" >Third option</option>

</select>
		
<input id="saveForm" class="button_text button btn" type="submit" name="submit" value="Search" />
</form>
</div></div>
</div>
<style>
#banner{position:relative;  background:green;  padding:10px;}
#banner img{vertical-align:top;}
#bannerText{position:absolute;  bottom:20px;  left:10px; width:100%;  }
#bannerText1{ background-color: rgba(0, 0, 0, 0.5);
    border-top: 1px solid #fe943e;  padding: 10px calc(5% + 180px);  position: relative;  margin:0 20px; width:80%; height: 116px;  }

</style>


