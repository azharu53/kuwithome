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
    <div id="bannerText1">
<form class="appnitro"  method="post" action="<?php echo  JRoute::_('index.php?option=com_gmapfp&view=gmapfplist'); ?>">
<input id="element_1" name="element_1" class="element text medium" type="text" maxlength="255" value=""/> 

<select class="element select medium" id="element_3" name="element_3"> 
<option value="" selected="selected"></option>
<option value="1" >First option</option>
<option value="2" >Second option</option>
<option value="3" >Third option</option>

</select>
		
<select class="element select medium" id="element_4" name="element_4"> 
<option value="" selected="selected"></option>
<option value="1" >First option</option>
<option value="2" >Second option</option>
<option value="3" >Third option</option>

</select>
		
<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
</form>
</div></div>
</div>
<style>
#banner{position:relative;  background:green;  padding:10px;}
#banner img{vertical-align:top;}
#bannerText{position:absolute;  bottom:20px;  left:10px; width:100%  background:red;}
#bannerText1{ background-color: rgba(0, 0, 0, 0.5);
    border-top: 1px solid #fe943e;  padding: 10px calc(5% + 180px);  position: relative;  margin:0 20px; width:80%; height: 116px;  }

</style>


