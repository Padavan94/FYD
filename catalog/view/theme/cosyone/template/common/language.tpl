<?php if (count($languages) > 1) { ?>
<div class="language_current contrast_font">
<?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <a class="head">
    </a>
    <?php } ?>
    <?php } ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language"> 
  <div class="top_header_drop_down">
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <a class="current"><?php echo $language['name']; ?></a>
    <?php } else { ?>
    <a href="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></a>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
</div>

<?php } ?>

<!--<div class='icon green col-sm-4'>
 <div class='handle'>Ru</div>
</div>-->
<script>
    (function() {
$(function() {
return $('.icon').on('click', function() {
if ($(this).hasClass('on')) {   
    window.location = 'http://fyd.net/en-gb';
$(this).removeClass('on');
} else {
    window.location = 'http://fyd.net/ru-ru';
$(this).addClass('on');

}
});
});
 
}).call(this);
</script>