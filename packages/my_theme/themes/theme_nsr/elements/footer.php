
	<div class="row">
		<div class="col-lg-12">
			<br>
			<span class="pull-right">
				<?php echo Core::make('helper/navigation')->getLogInOutLink()?>
			</span>
		</div>
	</div>
	
	<div id="loader">
        <div class="spinner">
            <div class="dot1"></div>
            <div class="dot2"></div>
        </div>
    </div>

</div>

	<?php
		$u = new user();
		$g = Group::getByName('Administrators');
		if ($u->inGroup($g)||$u->isSuperUser()) {
	?> 
		<div style='height:100px;'></div>
	<?php 
		} else {
	?>
		
		<!-- My Theme-->
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.3/jquery.mobile.min.js"></script>-->

		<!-- Bootstrap Core JavaScript -->
		<script src="<?php echo $view->getThemePath(); ?>/asset/js/bootstrap.min.js"></script>

		<!-- Plugin JavaScript -->
		<script src="<?php echo $view->getThemePath(); ?>/js/jquery.easing.1.3.js"></script>
		<script src="<?php echo $view->getThemePath(); ?>/js/classie.js"></script>
		<script src="<?php echo $view->getThemePath(); ?>/js/count-to.js"></script>
		<script src="<?php echo $view->getThemePath(); ?>/js/jquery.appear.js"></script>
		<script src="<?php echo $view->getThemePath(); ?>/js/cbpAnimatedHeader.js"></script>
		<script src="<?php echo $view->getThemePath(); ?>/js/jquery.fitvids.js"></script>
		<script src="<?php echo $view->getThemePath(); ?>/js/styleswitcher.js"></script>
		<script src="<?php echo $view->getThemePath(); ?>/js/jquery.matchHeight.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="<?php echo $view->getThemePath(); ?>/js/script.js"></script>
			
	<?php 
		}
	?>

	<?php View::element('footer_required'); ?>
	
</body>
</html>
