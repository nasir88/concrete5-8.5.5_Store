<?php
defined('C5_EXECUTE') or die("Access Denied.");

$this->inc('elements/header.php'); 

$this->inc('elements/menu.php'); 

$_1Content = new Area('Content');
$_1ContentBlocks = $_1Content->getTotalBlocksInArea($c);
$_1ContentDisplay = $_1ContentBlocks > 0 || $c->isEditMode();
?>
	
<?php if ($_1ContentDisplay) { ?>

	<div class="row">
		<div class="col-lg-12" >
		
			<?php if ($_1ContentBlocks = "0") { ?>
				<div style="padding: 8px; margin:8px; font-weight: bold; border: 1px dotted #f00; color:#f00; text-align:center;"><?php echo t('Your Content Is Empty, Add Content to The Page.')?></div>
			<?php } ?>
			
			<?php $_1Content->display($c); ?>
			
		</div>
	</div>
	
<?php } ?>

<?php  $this->inc('elements/footer.php'); ?>
