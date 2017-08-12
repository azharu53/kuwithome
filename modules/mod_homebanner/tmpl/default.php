<?php
/**
 * @copyright	Copyright (c) 2017 homebanner. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

// no direct access
defined('_JEXEC') or die;

$db = JFactory::getDbo();
$query ="SELECT f.*  FROM #__fields as f LEFT JOIN  #__fields_categories as fc on f.id =fc.field_id WHERE fc.category_id = 10";
$db->setQuery($query);
$field =$db->loadObjectList();
$fields =array();
	foreach($field as $f){
		$fiel=json_decode($f->fieldparams , true);
		$fields[$f->name]=$fiel['options'];
	}
?>
<div id="banner" style="position:relative;">
    <!-- <div style="position:absolute;right:30px;"><a id="offcanvas-toggler" href="#"><i class="fa fa-bars"></i></a></div> 
   <img src="<?php echo JURI::root(). '/images/banners/banner.jpg' ;?>" alt="banner" width="100%"/> -->
	   <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators 
		
		<ol class="carousel-indicators">
		  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		  <li data-target="#myCarousel" data-slide-to="1"></li>
		  <li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		-->
		<!-- Wrapper for slides -->
		<div class="carousel-inner">
		  <div class="item active">
			<img src="<?php echo JURI::root(). '/images/banners/banner.jpg' ;?>" alt="Los Angeles" style="width:100%;">
		  </div>

		  <div class="item">
			<img src="<?php echo JURI::root(). '/images/banners/banner.jpg' ;?>" alt="Chicago" style="width:100%;">
		  </div>
		
		  <div class="item">
			<img src="<?php echo JURI::root(). '/images/banners/banner.jpg' ;?>" alt="New york" style="width:100%;">
		  </div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		  <span class="glyphicon glyphicon-chevron-left"></span>
		  <span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">
		  <span class="glyphicon glyphicon-chevron-right"></span>
		  <span class="sr-only">Next</span>
		</a>
	  </div>
	  
   <div id="bannerText" >
    <h1 data-reactid=".1u7a2b2gydc.0.0.1.0.0.1.0.0">A Beautiful Way to Find your Home</h1>
    <div id="bannerText1"  class="row bannerText1">
		<div class="col-lg-3"> &nbsp; </div>
		<div class="col-lg-6">
		<form class="appnitro"  method="post" action="<?php echo JRoute::_('index.php?option=com_gmapfp&view=gmapfplist&id_perso=0&Itemid=110')?>">
		    <div class="row">
			<div class="col-lg-3">
				<select class="inputbox" name="departement" id="departement" size="1" >
				<option value="" >Select Area</option>
					<?php 
						foreach($fields['departement'] as $f){
							?><option value="<?php echo $f['value']; ?>" <?php echo JRequest::getVar('departement') == $f['value'] ? "selected='selected'":""; ?> > <?php echo $f['name']; ?></option>
							<?php
						}
					?>
				</select>
			</div>	
			<div class="col-lg-6">	
				<input id="address" name="address" style="width:100%;" class="element text medium" type="text" maxlength="255" value=""/> 
			</div>
			
			<div class="col-lg-3">	
			<input id="saveForm" class="button_text button btn" type="submit" name="submit" value="Search" />
			</div>
			</div>
			<div class="row">
			<div class="col-lg-3">
				<select id="tel2" class="inputbox " name="tel2" size="1">
					<option value="">- Property Type -</option>
					<?php 
						foreach($fields['tel2'] as $f){
							?><option value="<?php echo $f['value']; ?>" <?php echo JRequest::getVar('propertytype') == $f['value'] ? "selected='selected'":""; ?> > <?php echo $f['name']; ?></option>
							<?php
						}
					?>
				</select>
			</div>
			<div class="col-lg-3">
				<button class="formidbudget" type="button" onclick="formidbudget1(); return false;" > Budget 	</button>
				<div id="formidbudget" style="position:relative; display:none; z-index:99999;" >
					<div style="position:absolute;" >
					    <div class="row">
						<div class="col-lg-6"><input name="budgetmin" style="width:90%;" type="number" value="" placeholder="MIN" min="1" /> </div>
						<div class="col-lg-6"><input name="budgetmax" style="width:90%;" type="number" value="" placeholder="MAX" min="1"/></div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-lg-3">	
				<select id="tel" class="inputbox " name="tel" size="1" style="width:100%" >
						<option value=""> BHK </option>
						<?php 
						foreach($fields['tel'] as $f){
							?><option value="<?php echo $f['value']; ?>" <?php echo JRequest::getVar('tel') == $f['value'] ? "selected='selected'":""; ?> > <?php echo $f['name']; ?></option>
							<?php
						}
						?>
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
