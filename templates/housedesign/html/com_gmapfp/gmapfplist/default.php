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
		//carte à gauche du listing
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
			echo '<form action="'.JRoute::_('index.php?option=com_gmapfp&view=gmapfplist'.$layout_str.'&id_perso='.$perso.'&Itemid='.$itemid).'" method="post" name="adminForm">';
			?><div class="table-responsive">
				<table  class="gmapfpform table" >
					<tr>
						<td >
							<?php //echo JText::_( 'GMAPFP_FILTER' ); ?>
							<div class="row">
							<div class="col-lg-3">
							<?php if (@$this->lists['categorie']) {echo $this->lists['categorie'];}; ?>
							</div>
							<div class="col-lg-6">
							<input type="text" size="20" name="search_gmapfp" id="search_gmapfp" value="<?php echo $this->lists['search_gmapfp'];?>" class="text" onchange="document.adminForm.submit();"/>
							</div>
							<div class="col-lg-3">
							<button onclick="this.form.submit();"><?php echo JText::_( 'GMAPFP_GO_FILTER' ); ?></button>
							
							<button onclick="
								document.getElementById('search_gmapfp').value='';
								<?php if (@$this->lists['ville']) {?>document.adminForm.filtreville.value='-- <?php echo JText::_( 'GMAPFP_VILLE_FILTRE' ) ?> --'; <?php };?>
								<?php if (@$this->lists['departement']) {?>document.adminForm.filtredepartement.value='-- <?php echo JText::_( 'GMAPFP_DEPARTEMENT_FILTRE' ) ?> --'; <?php };?>
								<?php if (@$this->lists['pays']) {?>document.adminForm.filtrepays.value='-- <?php echo JText::_( 'GMAPFP_PAYS_FILTRE' ) ?> --'; <?php };?>
								<?php if (@$this->lists['categorie']) {?>document.adminForm.filtrecategorie.value='-- <?php echo JText::_( 'GMAPFP_CATEGORIE_FILTRE' ) ?> --'; <?php };?>
								this.form.submit();
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
								<option value="1BHK" <?php echo JRequest::getVar('tel') == '1BHK'? "selected='selected'":""; ?> > 1BHK</option>
								<option value="2BHK" <?php echo JRequest::getVar('tel') == '2BHK'? "selected='selected'":""; ?> > 2BHK</option>
								<option value="3BHK" <?php echo JRequest::getVar('tel') == '3BHK'? "selected='selected'":""; ?> > 3BHK</option>
								<option value="4BHK" <?php echo JRequest::getVar('tel') == '4BHK'? "selected='selected'":""; ?> > 4BHK</option>
							</select>
							</div>
							<div class="col-lg-4">
							<button class="formidbudget" type="button" onclick="formidbudget();" > Budget 	</button>
							<div id="formidbudget" style="display:none; position:relative; z-index:99999;" >
							<div style="position:absolute;" >
							<input name="budgetmin" class="element text medium" type="number" style="width:32%" value="" placeholder="MIN" min="1" /> 
							<input name="budgetmax" class="element text medium" type="number" style="width:32%"  value="" placeholder="MAX" min="1"/>
							</div>
							</div>
							</div>
							<div class="col-lg-3">
							
							<select id="tel2" class="inputbox " name="tel2" size="1" onchange="this.form.submit();" style="width:100%" >
								<option value="1" <?php echo JRequest::getVar('tel2') == '1'? "selected='selected'":""; ?> > Apartment </option>
								<option value="2" <?php echo JRequest::getVar('tel2') == '2'? "selected='selected'":""; ?> > Independent House</option>
								<option value="3" <?php echo JRequest::getVar('tel2') == '3'? "selected='selected'":""; ?> > Row House</option>
								<option value="4" <?php echo JRequest::getVar('tel2') == '4'? "selected='selected'":""; ?> > Plot</option>
								
								<option value="5" <?php echo JRequest::getVar('tel2') == '5'? "selected='selected'":""; ?> > Villa </option>
								<option value="6" <?php echo JRequest::getVar('tel2') == '6'? "selected='selected'":""; ?> > Builder Floor</option>
								<option value="7" <?php echo JRequest::getVar('tel2') == '7'? "selected='selected'":""; ?> > Farm House</option>
								<option value="8" <?php echo JRequest::getVar('tel2') == '8'? "selected='selected'":""; ?> > Penthouse</option>
								
								<option value="9" <?php echo JRequest::getVar('tel2') == '9'? "selected='selected'":""; ?> > Villament </option>
								<option value="10" <?php echo JRequest::getVar('tel2') == '10'? "selected='selected'":""; ?> > Studio Apartment</option>
								<option value="11" <?php echo JRequest::getVar('tel2') == '11'? "selected='selected'":""; ?> > Service Apartmen</option>
							</select> 
							</div>
							<div class="col-lg-3">
							<select id="email" class="inputbox " name="email" size="1" onchange="this.form.submit();" style="width:100%" >
								<option value=""> Furnishing State </option>
								<option value="completed" <?php echo JRequest::getVar('email') == '1'? "selected='selected'":""; ?> > Completed </option>
								<option value="ongoing" <?php echo JRequest::getVar('email') == '2'? "selected='selected'":""; ?> > Ongoing </option>
								<option value="upcoming" <?php echo JRequest::getVar('email') == '3'? "selected='selected'":""; ?> > Upcoming</option>
							</select>
							</div>
							
							</div>
							<div class="row">
							<div class="col-lg-3">
							<select id="email" class="inputbox " name="postedby" size="1" onchange="this.form.submit();" >
								<option value=""> Posted By </option>
								<?php foreach($postedby as $u){ ?>
									<option value="<?php echo $u->userid; ?>" <?php echo JRequest::getVar('postedby') == '1'? "selected='selected'":""; ?> > <?php echo $u->username; ?> </option>
									
								<?php } ?>
							</select>
							</div>
							<div class="col-lg-3">
							<select id="web" class="inputbox " name="web" size="1" onchange="this.form.submit();">
										<option value=""> Bathroom </option>
										<option value="1" <?php echo JRequest::getVar('web') == '1'? "selected='selected'":""; ?> > 1 </option>
										<option value="2" <?php echo JRequest::getVar('web') == '2'? "selected='selected'":""; ?> > 2 </option>
										<option value="3" <?php echo JRequest::getVar('web') == '3'? "selected='selected'":""; ?> > 3</option>
										<option value="4" <?php echo JRequest::getVar('web') == '4'? "selected='selected'":""; ?> > 4</option>
										<option value="5" <?php echo JRequest::getVar('web') == '5'? "selected='selected'":""; ?> > 5 </option>
							</select>
							</div>
							<div class="col-lg-6"></div>
							</div>
						</td>
					</tr>
				</table>
			   </div>
			</form>
		<?php endif; 
		//fin affichage des filtres
		?>
			
			
			
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
			echo '<table  style="width:100%"><tr>';
            foreach ($this->rows as $row) : ?>
            	<td nowrap="nowrap" class="gmapfp_article_listing_<?php $index_list++; echo (($index_list%2) XOR $decale); ?>" style="height:120px">
				<div class="row">
            	<div class="col-lg-3">
					<img src="<?php echo JURI::root().'images/gmapfp/'.$row->img;?>" width="100%">
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
					<strong> Posted By Ownner: <?php $user = JFactory::getUser($row->userid); echo $user->username; ?> </strong>
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
				<button class="btn btn-warning btn-sm" >Contact Seller</button>
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
            </div>
            </div>
       </div>
    	<?php 
		//carte dà droite du listing
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

<?php
if (!empty($this->perso->conclusion_detail)) {
	$article->text=$this->perso->conclusion_detail; 
	$results = $dispatcher->trigger('onContentPrepare', array ('com_gmapfp', & $article, & $this->params, 0));
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
 
