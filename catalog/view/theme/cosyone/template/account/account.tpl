<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $text_my_account; ?></h1>
        <div class="col-sm-6"><?php echo $entry_firstname; ?></div>
        <div class="col-sm-6"><?php echo $firstname; ?></div>
      
        <div class="col-sm-6"><?php echo $entry_lastname; ?></div>
        <div class="col-sm-6"><?php echo $lastname; ?></div> 
        
        <div class="col-sm-6"><?php echo $entry_email; ?></div>
        <div class="col-sm-6"><?php echo $email; ?></div> 

        <div class="col-sm-6"><?php echo $entry_telephone; ?></div>
        <div class="col-sm-6"><?php echo $telephone; ?></div>         
      <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>