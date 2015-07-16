<ion:partial view="header" />

    <section>     
      <div class="row">       
        <div class="col-sm-7 col-md-8">        
           <div id="owl-demo" class="owl-carousel owl-theme">
            <ion:page id="slideshow">
              <ion:articles>
                <ion:article>
                  <ion:medias type="picture" limit="1">
                    <div class="item"><img src="<ion:media:src />" alt="<ion:article:name />"></div>
                  </ion:medias>
                </ion:article>
              </ion:articles>
            </ion:page>
          </div>        
        </div>         
        <div class="col-sm-5 col-md-4">
        <ion:page id="novinky">
          <ion:articles>
            <ion:article>
          <div class="panel panel-default">
            <div class="panel-heading">
              <ion:article:title tag="h2" class="news" />
            </div>
            <div class="panel-body">
              <ion:content />
            </div>
          </div>
              </ion:article>
            </ion:articles>
          </ion:page>
        </div>
      </div>      
    </section>    
    <section>
      <div class="row">
        <ion:page id="sporty">
          <div class="col-sm-12">
            <ion:page:title tag="h2" class="sport-title" />
          </div>
          <ion:articles limit="6">
            <ion:article>
              <div class="col-xs-12 col-sm-6 col-md-4 sports-item <ion:article:name />">
                <a href="<ion:article:url />">
                  <div class="item-inner <ion:article:name />">
                    <ion:title tag="h3" />
                    <ion:medias type="picture" limit="1">
                      <img src="<ion:media:src size="360, 240" method="adaptive" />" alt="<ion:media:title />" />
                    </ion:medias> 
                  </div>
                </a>
              </div>
            </ion:article>
          </ion:articles>
        </ion:page>
      </div>
    </section>
    <section id="rozvrh">
      <ion:partial view="rozvrh" />
    </section>
       
   <script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({

      navigation : true,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem : true,
      autoPlay: 5000

      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false

      });
    });
</script>

<ion:partial view="footer" />