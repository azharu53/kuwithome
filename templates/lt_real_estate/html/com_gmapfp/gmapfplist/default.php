<?php
	/*
	* GMapFP Component Google Map for Joomla! 3.0.x
	* Version J3.29F
	* Creation date: Juillet 2015
	* Author: Fabrice4821 - www.gmapfp.org
	* Author email: webmaster@gmapfp.org
	* License GNU/GPL
	*/

defined('_JEXEC') or die('Restricted access'); 
//var_dump($this->rows);
//fonction pour execution des plugins dans la personnalisation
$dispatcher = JDispatcher::getInstance(); 
JPluginHelper::importPlugin('content'); 

$mainframe = JFactory::getApplication();
$document   = JFactory::getDocument();

$user = JFactory::getUser();
$uid=$user->id;
$property_ids =array();
$db = JFactory::getDbo();
if($uid > 0){
		
		$query ="SELECT property_id FROM #__wishlist WHERE userid ='".$uid."'";
		$db->setQuery($query);
		$property_ids =$db->loadColumn();	
 }
 
		$query ="SELECT a.userid,u.username  FROM #__gmapfp as a LEFT JOIN  #__users as u on a.userid =u.id WHERE a.published = 1";
		$db->setQuery($query);
		$postedby =$db->loadObjectList();


		$query ="SELECT f.*  FROM #__fields as f LEFT JOIN  #__fields_categories as fc on f.id =fc.field_id WHERE fc.category_id = 10";
		$db->setQuery($query);
		$field =$db->loadObjectList();
		$fields =array();
			foreach($field as $f){
				$fiel=json_decode($f->fieldparams , true);
				$fields[$f->name]=$fiel['options'];
			}
	
$active = $mainframe->getMenu()->getActive();

if ($active->params->get('menu-meta_description'))
{
	$document->setDescription($active->params->get('menu-meta_description'));
}

if ($active->params->get('menu-meta_keywords'))
{
	$document->setMetadata('keywords', $active->params->get('menu-meta_keywords'));
}
//largeur de la carte
	switch (substr($this->params->get('gmapfp_width'),-1)){
		case '%' :
			$width_carte  = $this->params->get('gmapfp_width');
			$width_carte2 = substr($this->params->get('gmapfp_width'),0 ,-1);
			$unite_carte  = '%';
			break;
		case 'x' :
			$width_carte  = $this->params->get('gmapfp_width');
			$width_carte2 = substr($this->params->get('gmapfp_width'),0 ,-2);
			$unite_carte  = 'px';
			break;
		default :
			$width_carte  = $this->params->get('gmapfp_width').'px';
			$width_carte2 = $this->params->get('gmapfp_width');
			$unite_carte  = 'px';
	}

//largeur de la liste
//si carte et listing les un en dessous des autres, la largeur de la liste = la largeur de la carte
	if (($this->params->get('gmapfp_position_liste')==2)or($this->params->get('gmapfp_position_liste')==3)) {
		$width_liste  = $width_carte;
		$width_liste2 = $width_carte2;
		$unite_liste  = $unite_carte;
	}else{
		switch (substr($this->params->get('gmapfp_width_list'),-1)){
			case '%' :
				$width_liste  = '200px';
				$width_liste2 = 200;
				$unite_liste  = 'px';
				break;
			case 'x' :
				$width_liste  = $this->params->get('gmapfp_width_list');
				$width_liste2 = substr($this->params->get('gmapfp_width_list'),0 ,-2);
				$unite_liste  = 'px';
				break;
			default :
				$width_liste  = $this->params->get('gmapfp_width_list').'px';
				$width_liste2 = $this->params->get('gmapfp_width_list');
				$unite_liste  = 'px';
		}
	}

//	$width_liste2 = $this->params->get('gmapfp_width_list');
	$nbre_col	= (int)$this->params->get('gmapfp_nombre_col');
	if (!$nbre_col){$nbre_col=1;};
	$width_col 	= ((int)($width_liste2/$nbre_col)).$unite_liste;

?>
<?php if ($this->params->get('show_page_heading')) : ?>
		<h1>
				<?php echo $this->escape($this->params->get('page_heading')); ?>
		</h1>
<?php endif;
echo '<div class="gmapfp row">';

//affichage des filtres
if ($this->params->get('gmapfp_filtre')==1) :
	$layout = JRequest::getVar('layout', '', '', 'str');
	$layout_str='';
	if ($layout) {
		$catid = JRequest::getVar('catid', 0, '', 'int');
		$layout_str='&layout='.$layout.'&catid='.$catid;
	};
	$itemid = JRequest::getVar('Itemid', 0, '', 'int');
	$perso = JRequest::getVar('id_perso', 0, '', 'int');
	?> 
<?php endif; 
		//fin affichage des filtres
		?>
<div class="table-responsive"> <?php //echo $map_px; ?>
<table class="table blog<?php echo $this->params->get('pageclass_sfx'); ?>" cellpadding="0" cellspacing="0" width="100%">
    <?php
	//carte en dessous du listing
	if ($this->params->get('gmapfp_position_liste')==2) {?>
        <tr style="vertical-align: top;" width="<?php echo $width_carte;?>">
        	<td>
				<div> <?php echo $this->map; ?> <div>
            </td>
        </tr>
    <?php };?>
    <tr>
    	<?php 
		//carte � gauche du listing
		if ($this->params->get('gmapfp_position_liste')==1) {?>
            <td style="vertical-align: top;" width="<?php echo $width_carte;?>">
                <div><?php echo $this->map;?> </div>
            </td>
        <?php };
        //listing
		?>
        <td style="vertical-align: top;" width="100%" >
		 
		    <div class="col-lg-6 class50" style="float:left;">
			
			<?php
			echo '<form id="gmapfileter" action="'.JRoute::_('index.php?option=com_gmapfp&view=gmapfplist'.$layout_str.'&id_perso='.$perso.'&Itemid='.$itemid).'" method="post" name="adminForm">';
			?><div class="table-responsive1">
				<table  class="gmapfpform table" >
					<tr>
						<td >
							<?php //echo JText::_( 'GMAPFP_FILTER' ); ?>
							<div class="row">
							<div class="col-lg-3">
							<?php //if (@$this->lists['categorie']) {echo $this->lists['categorie'];}; ?>
							<select class="inputbox" name="departement" id="departement" onchange="this.form.submit();" size="1" >
								<option value="" > Select Area </option>
								<?php 
									foreach($fields['departement'] as $f){
										?><option value="<?php echo $f['value']; ?>" <?php echo JRequest::getVar('departement') == $f['value'] ? "selected='selected'":""; ?> > <?php echo $f['name']; ?></option>
										<?php
									}
								?>
							</select>
							</div>
							<div class="col-lg-6">
							<input type="text" size="20" name="search_gmapfp" id="search_gmapfp" value="<?php echo $this->lists['search_gmapfp'];?>" class="text" onchange="document.adminForm.submit();"/>
							</div>
							<div class="col-lg-3">
							<button onclick="this.form.submit();"><?php echo JText::_( 'GMAPFP_GO_FILTER' ); ?></button>
							
							<button type="reset" onclick="
								document.getElementById('search_gmapfp').value='';
								document.getElementById('tel').value=''; 
								document.getElementById('tel2').value=''; 
								document.getElementById('email').value=''; 
								document.getElementById('postedby').value='';
								document.getElementById('web').value='';
								/* this.form.submit(); */
							"><?php echo JText::_( 'GMAPFP_RESET' ); ?>
							</button>
							</div>
							</div>
							 
							<?php
							//if (@$this->lists['ville']) {echo $this->lists['ville'].'<br />';};
							//if (@$this->lists['departement']) {echo $this->lists['departement'].'<br />';};
							//if (@$this->lists['pays']) {echo $this->lists['pays'].'<br />';};
							?>
							<div class="row">
							<div class="col-lg-2">
							<select id="tel" class="inputbox " name="tel" size="1" onchange="this.form.submit();" style="width:100%" >
								<option value=""> BHK </option>
								<?php 
								foreach($fields['tel'] as $f){
									?><option value="<?php echo $f['value']; ?>" <?php echo JRequest::getVar('tel') == $f['value'] ? "selected='selected'":""; ?> > <?php echo $f['name']; ?></option>
									<?php
								}
								?>
							</select>
							</div>
							<div class="col-lg-4">
							<button class="formidbudget" type="button" onclick="formidbudget();" > Budget 	</button>
							<div id="formidbudget" style="display:none; position:relative; z-index:99999;" >
							<div style="position:absolute;" >
							<div class="row">
							<div class="col-lg-6"><input name="budgetmin" style="width:90%;" type="number" value="<?php echo JRequest::getVar('budgetmin',''); ?>" placeholder="MIN" min="1" /></div>
							<div class="col-lg-6"><input name="budgetmax" style="width:90%;" type="number" value="<?php echo JRequest::getVar('budgetmax',''); ?>" placeholder="MAX" min="1"/></div>
							</div>
							</div>
							</div>
							</div>
							<div class="col-lg-3">
							
							<select id="tel2" class="inputbox " name="tel2" size="1" onchange="this.form.submit();" style="width:100%" >
								<option value=""> Property Type </option>
								<?php 
									foreach($fields['tel2'] as $f){
										?><option value="<?php echo $f['value']; ?>" <?php echo JRequest::getVar('tel2') == $f['value']? "selected='selected'":""; ?> > <?php echo $f['name']; ?></option>
										<?php
									}
								?>
							</select> 
							</div>
							<div class="col-lg-3">
							<select id="email" class="inputbox " name="email" size="1" onchange="this.form.submit();" style="width:100%" >
								<option value=""> Furnishing State </option>
								<?php 
									foreach($fields['email'] as $f){
										?><option value="<?php echo $f['value']; ?>" <?php echo JRequest::getVar('email') == $f['value']? "selected='selected'":""; ?> > <?php echo $f['name']; ?></option>
										<?php
									}
								?>
							</select>
							</div>
							
							</div>
							<div class="row">
							<div class="col-lg-3">
							<select id="postedby" class="inputbox " name="postedby" size="1" onchange="this.form.submit();" >
								<option value=""> Posted By </option>
								<?php foreach($postedby as $u){ ?>
									<option value="<?php echo $u->userid; ?>" <?php echo JRequest::getVar('postedby') == '1'? "selected='selected'":""; ?> > <?php echo $u->username; ?> </option>
									
								<?php } ?>
							</select>
							</div>
							<div class="col-lg-3">
							<select id="web" class="inputbox " name="web" size="1" onchange="this.form.submit();">
										<option value=""> Bathroom </option>
										<?php 
											foreach($fields['web'] as $f){
												?><option value="<?php echo $f['value']; ?>" <?php echo JRequest::getVar('web') == $f['value']? "selected='selected'":""; ?> > <?php echo $f['name']; ?></option>
												<?php
											}
										?>
							</select>
							</div>
							<div class="col-lg-6"></div>
							</div>
						</td>
					</tr>
				</table>
			   </div>
			   <input name="chalatitude"  type="hidden" value="<?php echo JRequest::getVar('chalatitude',''); ?>" id="chalatitude" />
			   <input name="chalongitude" type="hidden" value="<?php echo JRequest::getVar('chalongitude',''); ?>" id="chalongitude" />
			</form>
		
			
			
			
            <div class="gmapfp_enveloppe_liste" style="overflow:auto; <?php 
				if ($this->params->get('gmapfp_position_liste')<2) { 
					//echo 'width:'.($width_liste2+22).'px; '; 
					//echo 'height:'.($this->params->get('gmapfp_height')+0).'px; '; 
				} ?>
            ">
            <div class="gmapfp_liste" >
		<?php 
			if (!empty($this->perso->intro_detail)) {
				$article->text=$this->perso->intro_detail; 
				$results = $dispatcher->trigger('onContentPrepare', array ('com_gmapfp', & $article, & $this->params, 0));
				echo $article->text;
			}
            $compte = 0;
			$index_list = 0;
			$decale=false; 
			  if(count($this->rows) > 0){  
			echo '<table  style="width:100%"><tr>';
            foreach ($this->rows as $row) : ?>
            	<td nowrap="nowrap" class="gmapfp_article_listing_<?php $index_list++; echo (($index_list%2) XOR $decale); ?>" style="height:120px">
				<div class="">
            	<div class="col-lg-3">
					<?php  $img = explode(",",$row->img); if($img[0]){ ?>
					<img src="<?php echo JURI::root().'images/gmapfp/'.$img[0];?>" width="100%">
					<?php } else { ?>
					<img src="<?php echo JURI::root().'images/gmapfp/blank/no.gif' ?>" width="100%">
					<?php } ?>
				</div>
				<div class="col-lg-6" >
				    <div style="margin-left:15px;" >
					<div class="heading-list" ><span><?php echo $row->nom; ?></span></div>
					<div class="row" style="text-align:left;font-size:15px;line-height: 20px; ">
						<div class="col-lg-4">Price:<br/><?php echo $row->pay;?></div>
						<div class="col-lg-4">SqFt:<br/><?php echo $row->fax;?></div>
						<div class="col-lg-4">Possession:<br/>MAY'2017</div>
					</div>
					<div class="col-lg-12" style="font-size:11px;line-height: 12px;">
					<div style="border-top: 1px solid #ccc; padding-top:10px; margin-top:5px; margin-right:15px;">
					<strong> Posted By Ownner: <?php if($row->userid != '531'){ $user = JFactory::getUser($row->userid); echo $user->username; } else { echo 'admin'; } ?> </strong>
					<div><?php echo 'Real estate'; ?></div>
					</div>
					</div>
					
					</div>
                </div>
				<div class="col-lg-3">
					<?php 
                if (empty($row->glat)or empty($row->glng)) {
					echo '<span class="sidebar">';
				}else{
                    echo '<span class="sidebar" onmouseover=\'google.maps.event.trigger(marker['.$compte.'],"mouseover")\' onmousedown=\'google.maps.event.trigger(marker['.$compte.'],"mousedown")\' onmouseout=\'google.maps.event.trigger(marker['.$compte.'],"mouseout")\' >';
					$compte ++;
				};
                $affichage = "";
				
                if ($this->params->get('gmapfp_view_marqueur'))
                	$affichage="<img src=".$row->marqueur.">";
                if ($this->params->get('gmapfp_view_ville'))
                    $affichage .= $row->ville." : ";
                //echo $affichage.$row->nom; 
                ?><span> Quick View </span>
                	 </span>
                <a class="modal_link cboxElement  btn btn-warning btn-sm" data-modal-class-name="no_title" data-modal-inner-height="500" data-modal-inner-width="800" href="<?php echo JRoute::_('index.php?option=com_propertycontact&view=inquiryform&Itemid=162'); ?>?ml=1<?php echo '&proid='.$row->id.'&uid='.$row->userid; ?>" data-modal-done="1"> Contact Seller </a>
				
				<?php  if($uid > 0){ 
					if(!in_array($row->id, $property_ids) ){
				?>
				<button class="btn btn-warning btn-sm addwishlist"  name="<?php echo $row->id; ?>" > Add wishlist </button>			
				<?php } else { ?>
				<button class="btn btn-warning btn-sm rmovewishlist"  name="<?php echo $row->id; ?>" > Remove wishlist </button>			
				<?php }  } ?>
				</div>	
                </div>	
            	</td>
            <?php 
			if ($index_list>=$nbre_col) { 
				echo '</tr><tr>';
				$index_list=0;
				$decale=!$decale;
			};

			endforeach;?>
            </tr></table>
			<?php  } else { ?>
		<h2>No Property Availabel</h2> 
		<?php } ?>
            </div>
            </div>
       </div>
    	<?php 
		//carte d� droite du listing
		if ($this->params->get('gmapfp_position_liste')==0) {?>
            <!-- <td style="vertical-align: top;" width="<?php echo $width_carte;?>"> -->
                <div class="col-lg-6 class50" style="float:left;">   <?php echo $this->map; ?></div>
            
        <?php };?>
		
        </td>
    </tr>
   
   <?php 
	//carte sous le listing
	if ($this->params->get('gmapfp_position_liste')==3) {?>
        <tr style="vertical-align: top;" width="<?php echo $width_carte;?>">
        	<td>
				<div> <?php echo $this->map; ?> <div>
            </td>
        </tr>
    <?php };?>
</table>
</div>


<div id="cboxOverlay" style="opacity: 0.5; cursor: pointer; visibility: visible; display: none;"></div>
<div id="cboxOverlaywaitd" class="" role="dialog" tabindex="-1" style="  display: none;  height: 410px; left: 45%; right:45%;  position: absolute; text-align: center; top: 35%;  visibility: visible;  width: 316px;">
<div class="waitloader"></div> 
</div>
</div>


<?php 
if (!empty($this->perso->conclusion_detail)) {
	$article->text=$this->perso->conclusion_detail; 
	$results = $dispatcher->trigger('onContentPr epare', array ('com_gmapfp', & $article, & $this->params, 0));
	echo $article->text;
}
?> 
<script>
	function formidbudget(){
		if(jQuery('#formidbudget').css('display') == 'none'){
			jQuery('#formidbudget').css('display','block');
			 
		} else {
			jQuery('#formidbudget').css('display','none');
			 
		}
	}
</script>
 
