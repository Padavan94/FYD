<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-banner" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-banner" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-banner"><?php echo $entry_banner; ?></label>
            <div class="col-sm-10">
              <select name="banner_id" id="input-banner" class="form-control">
                <?php foreach ($banners as $banner) { ?>
                <?php if ($banner['banner_id'] == $banner_id) { ?>
                <option value="<?php echo $banner['banner_id']; ?>" selected="selected"><?php echo $banner['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $banner['banner_id']; ?>"><?php echo $banner['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
              <?php if ($error_width) { ?>
              <div class="text-danger"><?php echo $error_width; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
              <?php if ($error_height) { ?>
              <div class="text-danger"><?php echo $error_height; ?></div>
              <?php } ?>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-popup-width"><?php echo $entry_popup_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="popup_width" value="<?php echo $popup_width; ?>" placeholder="<?php echo $entry_popup_width; ?>" id="input-popup-width" class="form-control" />
              <?php if ($error_popup_width) { ?>
              <div class="text-danger"><?php echo $error_popup_width; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-popup-height"><?php echo $entry_popup_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="popup_height" value="<?php echo $popup_height; ?>" placeholder="<?php echo $entry_popup_height; ?>" id="input-popup-height" class="form-control" />
              <?php if ($error_popup_height) { ?>
              <div class="text-danger"><?php echo $error_popup_height; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-button-background"><?php echo $entry_button_background; ?></label>
            <div class="col-sm-10">
              <input type="text" name="button_background" value="<?php echo $button_background; ?>" placeholder="<?php echo $entry_button_background; ?>" id="input-button-background" class="form-control color-picker" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-button-color"><?php echo $entry_button_color; ?></label>
            <div class="col-sm-10">
              <input type="text" name="button_color" value="<?php echo $button_color; ?>" placeholder="<?php echo $entry_button_color; ?>" id="input-button-color" class="form-control color-picker" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-cover-background"><?php echo $entry_cover_background; ?></label>
            <div class="col-sm-10">
              <input type="text" name="cover_background" value="<?php echo $cover_background; ?>" placeholder="<?php echo $entry_cover_background; ?>" id="input-button-background" class="form-control color-picker" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-caption"><?php echo $entry_caption; ?></label>
            <div class="col-sm-10">
              <select name="caption" id="input-caption" class="form-control">
                <?php if ($caption) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
<script type="text/javascript">
	$('.color-picker').colorpicker();
</script>
</div>
<?php echo $footer; ?>