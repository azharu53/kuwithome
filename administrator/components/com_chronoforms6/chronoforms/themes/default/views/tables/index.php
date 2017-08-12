<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>

<form action="<?php echo r_('index.php?ext=chronoforms&cont=connections'); ?>" method="post" name="admin_form" id="admin_form" class="ui form">
	
	<h2 class="ui header"><?php echo $this->data('name'); ?></h2>
	
	<div class="ui clearing divider"></div>
	
	<?php echo $this->Paginator->navigation('Table'); ?>
	<?php echo $this->Paginator->limiter('Table'); ?>
	
	<table class="ui selectable table">
		<thead>
			<tr>
				<th class="">
					<div class="ui select_all checkbox">
						<input type="checkbox">
						<label></label>
					</div>
				</th>
				<th class="collapsing"><?php el('View'); ?></th>
				<?php foreach($fields as $field): ?>
				<th class="collapsing"><?php echo $this->Sorter->link($field, $field); ?></th>
				<?php endforeach; ?>
			</tr>
		</thead>
		<tbody>
			<?php foreach($rows as $i => $row): ?>
			<tr>
				<td class="collapsing">
					<div class="ui checkbox selector">
						<input type="checkbox" class="hidden" name="gcb[]" value="<?php echo $row['Table'][$pkey]; ?>">
						<label></label>
					</div>
				</td>
				<td class="collapsing"><a href="<?php echo r_('index.php?ext=chronoforms&cont=tables&act=view&name='.$this->data('name').'&id='.$row['Table'][$pkey]); ?>"><?php el('View'); ?></a></td>
				<?php foreach($fields as $field): ?>
				<td class="collapsing"><?php echo $row['Table'][$field]; ?></td>
				<?php endforeach; ?>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
	
</form>
