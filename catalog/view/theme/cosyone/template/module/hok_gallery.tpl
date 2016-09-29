<section class="row">	
	<div id="gallery<?php echo $module; ?>" class="ct-gallery ct-js-gallery ct-gallery--col4 lightGallery">
		<?php foreach ($banners as $banner) { ?>
		<article data-src="<?php echo $banner['popup']; ?>" class="ct-gallery-itemDefaultHover">
			<figure class="ct-gallery-item"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
				<figcaption class="ct-u-colorWhite text-uppercase">
					<div class="ct-u-displayTableVertical">
						<?php if ($caption) { ?>
						<div class="ct-u-displayTableCell text-left">
							<h6 class="ct-gallery-itemTitle ct-fw-700"><?php echo $banner['title']; ?></h6>
						</div>
						<?php } ?>
						<div class="ct-u-displayTableCell text-right"><span class="btn btn-xs btn-default">see gallery</span></div>
					</div>
				</figcaption>
			</figure>
		</article>
	  <?php } ?>
	</div>
</section>
<script type="text/javascript">
</script>
<style>
<?php if ($cover_background) { ?>
.ct-gallery-itemDefaultHover figcaption {
	background-color: <?php echo $cover_background; ?>
}
<?php } ?>
<?php if ($button_background || $button_color) { ?>
.ct-gallery-item .btn-default {
	<?php if ($button_background) { ?>
	background-color: <?php echo $button_background; ?>;
	<?php } ?>
	<?php if ($button_color) { ?>
	color: <?php echo $button_color; ?>;
	<?php } ?>
}
<?php if ($button_color) { ?>
.ct-gallery-itemTitle {
	color: <?php echo $button_color; ?>;
}
<?php } ?>
.ct-gallery-item .btn-default:hover {
	<?php if ($button_background) { ?>
	color: <?php echo $button_background; ?>;
	<?php } ?>
	<?php if ($button_color) { ?>
	background-color: <?php echo $button_color; ?>;
	border-color: <?php echo $button_color; ?>;
	<?php } ?>
}
<?php } ?>
</style>
<script type="text/javascript">
    $(document).ready(function() {
        $("#gallery<?php echo $module; ?>").lightGallery({showThumbByDefault:!1,addClass:"showThumbByDefault",enableTouch:!0,enableDrag:!0,loop:!0}); 
    });
</script>
