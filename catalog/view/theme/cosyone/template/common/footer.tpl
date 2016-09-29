<div class="clearfix footer_margin"></div>
<div id="footer">
    <div class="container custom-menu-home">
        <div class="col-md-12 no-padding">
            <div class="col-md-9 no-padding">
                <ul class="nav navbar-nav">
                    <li><a href="/index.php?route=information/information&information_id=7">Доставка и оплата</a></li>
                    <li><a href="/index.php?route=information/information&information_id=8">Сотрудничество</a></li>
                    <li><a href="/index.php?route=information/information&information_id=10">Политика компании</a></li>
                    <li><a href="/index.php?route=information/information&information_id=9">Акции</a></li>
                    <li><a href="/index.php?route=information/information&information_id=11">Бонусная карта</a></li>
                </ul> 
            </div>
            <div class="col-md-3 no-padding">
                <div class="phone-f"><span><a href="#">+7 963 929 01 61</a></span><br /><a href="#">info@First.Daring.com</a></div>
            </div>                
        </div>
    </div>    
</div> <!-- #footer ends --> 
  <div class="bottom_line"> 
      <div class="scroll_to_top"><a class="scroll_top icon tablet_hide"><i class="fa fa-angle-up"></i></a></div>
      <div class="container">
          <div class="col-md-6 col-sm-12 no-padding">
              <div id="powered"><?php echo $powered; ?></div>
              <?php if ($cosyone_footer_payment_icon) { ?>
              <div id="footer_payment_icon"><img src="image/<?php echo $cosyone_footer_payment_icon; ?>" alt="" /></div>
              <?php } ?>
          </div>
          <div class="col-md-6 col-sm-12"><?php echo $footer_modules ?></div>
      </div>
      

   <div class="clearfix"></div>
  </div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
 <!-- .outer_container ends -->
<script type="text/javascript" src="catalog/view/theme/cosyone/js/jquery.cookie.js"></script>

<script type="text/javascript" src="catalog/view/theme/cosyone/js/colorbox/jquery.colorbox-min.js"></script>
<link href="catalog/view/theme/cosyone/js/colorbox/custom_colorbox.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="catalog/view/theme/cosyone/js/quickview.js"></script>
<?php if($cosyone_use_retina) { ?>
<script type="text/javascript" src="catalog/view/theme/cosyone/js/retina.min.js"></script>
<?php } ?>
<?php echo $live_search; ?>
<?php echo $cosyone_cookie; ?>
</body></html>