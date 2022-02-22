<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); ?>

<?php
		$u = new user();
		$g = Group::getByName('Administrators');
		if ($u->inGroup($g)||$u->isSuperUser()) {
?>

	<div style="width: 100%; padding: 5px; font-weight: bold; border: 2px dotted #ff9900; font-weight: bold;" class="launch-tooltip" data-toggle="tooltip" data-placement="bottom" data-original-title="Title landing page display in edit mode.">
	Landing Page : <?php echo $cSectionLanding; ?>
	</div>

<?php } else {  ?>

	<span id="<?php echo str_replace(' ', '', $cSectionLanding); ?>"></span>
	
<?php }  ?>