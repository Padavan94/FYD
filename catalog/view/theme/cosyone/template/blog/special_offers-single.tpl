
<?php echo $header; ?>

<div class="content content-blog-single">
  <div class="container">
    <div class="row">
      <div class="content__inner">
        <div class="aside-wrap">
         <!-- <aside class="aside">
            <div class="aside__phones">
              <div class="aside__phones-inner">
                <a href="tel:0937696000"><b>(093)</b> 76-96-000</a>
                <a href="tel:0462930063"><b>(0462)</b> 93-00-63</a>
                <span class="icon-phone"></span>
              </div>
            </div>
            <div class="aside__skype"> 
              <span>dostavka24.cn.ua</span>
            </div>
            <div class="aside__mail">
              <a href="mailto:dostavka24.cn.ua@gmail.com">dostavka24.cn.ua@gmail.com</a>
            </div>
          </aside>
        </div>-->
        <div id="content" class="content__right">
          <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
          </ul>
          <div class="title">
            <h2><?php echo ucfirst($blog['name']); ?></h2>
          </div>
          <div class="blog-single__date">
           <!-- <p class="descr">Опубликовано:</p>-->
            <p class="date"><span class="icon-calendar"></span><?php echo $blog['date_added']; ?></p>
           <!-- <p class="time"><span class="icon-clock"></span><?php echo $blog['time_added']; ?></p>-->
          
          <div class="blog-single__container">
               <!-- <div class="blog-single__img">
                    <?php if($blog['image']): ?>
                      <img src="/image/<?php echo $blog['image']; ?>" alt="<?php $blog['image']; ?>">
                      <?php else: ?>
                      <img src="/image/no_image.png" alt="/image/no_image.png" />
                    <?php endif; ?>
                    
                </div>-->
                <div class="blog-single__description">
                    <p><?php echo html_entity_decode($blog['description']); ?></p>
                </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</div>

    
<?php if(false){ ?>    
  <section class="main-title">
    <div class="container">
      <div class="main-title__container">
        <h1><?php echo ucfirst($blog['name']); ?></h1>
        <div class="main-title__sub">
          <?php echo html_entity_decode($blog['description']); ?>
        </div>
      </div>
    </div>
  </section>
<?php } ?>    
    
    
  <?php if($images) : ?>
    <div class="collection-grid col-md-12">
      <div class="collection-grid__sizer"></div>
        <?php foreach ($images as $image) : ?>
          <div class="collection-grid__item  col-md-3">
            <a href="/image/<?php echo $image['image']; ?>"><img src="/image/<?php echo $image['image']; ?>" alt="img"></a>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  <?php endif; ?>
</div>





<script type="text/javascript"><!--
$(document).ready(function() {
  $('.collection-grid').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
//--></script> 

<?php echo $footer; ?>
