<ion:partial view="header" />

    <div class="row">
      <div class="col-md-8">
        <ion:page id="slideshow">
         <ion:medias type="picture" limit="1"> 
            <div class="bum">
              <img src="<ion:media:src />" alt="<ion:media:title />" style="width:100%;"/>                  
            </div>
          </ion:medias>
        </ion:page>
      </div><!-- /.col-md-8 -->      
      <div class="col-md-4">
        <div class="panel panel-default">
          <div class="panel-heading">Panel heading without title</div>
            <div class="panel-body">
                    Panel content
            </div>
        </div>
      </div>     
  </div><!-- /.row -->
  <div class="row">
      <ion:page id="sporty"> 
        <div class="col-sm-12">
          <ion:page:title tag="h1" />
        </div> 
          <ion:articles limit="6">
          <ion:article>
           <div class="col-sm-6 col-md-4">
            <ion:article:title tag="h3" characters="20"/>
            <ion:medias type="picture" limit="1"> 
              <div class="item-image">              
                <a href="<ion:media:src />">
                  <img src="<ion:media:src />" alt="<ion:media:title />" style="width:100%;" />
                </a>
              </div>
              </ion:medias>                                       
            </div>
            </ion:article>
          </ion:articles>          

      </ion:page>             
    </div> 
    
    

<ion:partial view="footer" />