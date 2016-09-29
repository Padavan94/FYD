<?php if(false) { ?>
<div class="content-wrapper wrapper-block row">
		<ul class="breadcrumb">
		  	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		  		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		  	<?php } ?>
		</ul>
	<div class="content-container col-md-12">
				<?php echo $column_left; ?>
				<!-- c-blog -->
				<div class="c-blog">
					<h2 class="text-left">Новости</h2>
					<div class="product-layout">
					<?php foreach($blog as $value) { ?>
						<div class="product-thumb col-md-12">
							<!-- blog description -->
							<div class="c-panel-heading c-block-blog c-blog-panel col-sm-12">                                                    
								<div class="b-date pull-left">
	                              	<div class="b-blog-date" style="float:right;position: absolute;right: -14px;background: -webkit-linear-gradient(top, #79d670, #4bbe3f);
    background: -ms-linear-gradient(top, #79d670, #4bbe3f);
    background: -moz-linear-gradient(top, #79d670, #4bbe3f);
    background: linear-gradient('to bottom', #79d670, #4bbe3f); width:82px; text-align:center;color:white;padding:10px;
    z-index: 2;border-bottom-left-radius: 8px;
    border-bottom-right-radius: 8px;">
										<span class="b-day b-blog-day" style="font-size:35px;clear:both;text-align:center;color-white;"><?php echo $value['day']; ?> </span>
										<span class="b-month b-blog-month" style="font-size:26px;clear:both;text-align:center;color-white;"><?php echo $value['month']; ?> </span>
										<span class="b-year b-blog-year" style="font-size:16px;clear:both;text-align:center;color-white;"><?php echo $value['year']; ?> </span>
	                                </div>
								</div>
	                            </div>
	                            <div class="c-blog-panel-2 col-sm-12 row">
	                            <?php if(!empty($value['image'])) { ?>
		                        <div class="c-image col-md-2">
			                        <img src="/image/<?php echo $value['image']; ?>" class="img-thumbnail" style="margin-bottom:20px;margin-top:20px;"/>
			                    </div>
			                    <?php } ?>
	                            <div class="c-panel-body col-md-10">
	                            
			                    <div class="b-title b-blog-title">
	                            	<h3><?php echo $value['name']; ?><h3>
	                            </div>
	                            <div class="b-desc">
	                            	<?php echo html_entity_decode($value['description'], ENT_QUOTES, 'UTF-8'); ?>
	                            </div>
	                            </div>
								<div class="c-panel-footer">
		 
								</div>
	                        </div>
						</div>
					<?php } ?>
					</div>
				</div>
				<!-- /c-blog -->
	
	            <?php echo $content_bottom; ?>
	        </div>
	        <div class="right-container col-sm-3">
	            <?php echo $column_right ?>
	        </div>
	    </div>
	</div>
</div>






<div class="content">
  <section class="content__inner">
    <div class="blog">
      <div class="container">
        <div class="blog__container">
          <?php if(isset($blog) && $blog) : ?>
            <?php foreach ($blog as $post) : ?>
              <?php //$day = date_parse($post['date_added']);
               ?>
               <?php //var_dump($post['date_added']);
               ?>
          <article class="blog__item">
            <div class="blog__item__img">
              <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/special_offers&amp;path=<?php echo $post['blog_id']; ?>"><img src="/image/<?php echo $post['image']; ?>" alt="img"></a>
            </div>
            <div class="blog__item__body">
              <h4 class="blog__item__title"><?php echo ucfirst($post['name']); ?></h4>
              <p class="blog__item__text"><?php echo ucfirst($post['description']); ?></p>
              <div class="blog__item__buttons">

                <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/special_offers&amp;path=<?php echo $post['blog_id']; ?>" class="blog__item__more"><?php echo $text_read; ?></a>
              </div>
            </div>
            <div class="blog__item__date"><strong><?php echo $post['day']; ?><span><?php echo $post['month'];?></span></strong></div>
          </article>
          <?php endforeach; ?>
        <?php endif; ?>
          
        </div>
        <?php if(false){ ?>
        <nav class="pagination-wrapper">
            <ul class="pagination">
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">6</a></li>
              <li><a href="#">7</a></li>
              <li><a href="#">8</a></li>
              <li><a href="#">9</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
        <?php } ?>
          
      </div>
    </div>
  </section>

</div>









<?php } ?>


<?php echo $header; ?>

<div class="content">
  <div class="container">
    <div class="row">
      <div class="content__inner">
        <div class="aside-wrap">
          <aside class="aside">
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
        </div>
        <div id="content" class="content__right">
          <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
          </ul>
          <div class="title">
            <h2>акции</h2>
          </div>
          <div class="special-offers__container">
            <?php if(isset($blog) && $blog) : ?>
              <?php foreach ($blog as $post) : ?>

              <div class="panel-body special-offers__item special-offers__item--full-width">
                      <div class="title">
                          <h5><?php echo ucfirst($post['name']); ?></h5>
                      </div>
                      <div class="info">
                          <div class="img">
                             <img src="/image/<?php echo $post['image']; ?>" alt="img">
                          </div>
                          <div class="descr">
                              <p><?php echo ucfirst($post['description']); ?></p>
                              <div class="special-offers__date">
                                <p class="date"><span class="icon-calendar"></span><?php echo $post['date_added']; ?></p>
                                <p class="time"><span class="icon-clock"></span><?php echo $post['time_added']; ?></p>
                              </div>
                              <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/special_offers&amp;path=<?php echo $post['blog_id']; ?>">Подробнее</a>
                          </div>
                      </div>
              </div>
              <?php endforeach; ?>
            <?php endif; ?>
          </div>
          <div id="blog-pagination">
              <?php echo $pagination; ?>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</div>





<?php echo $footer; ?>