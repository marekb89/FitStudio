<ion:partial view="header" />

  <div class="row">
   <ion:articles>
    <ion:article>
      <div class="col-md-12">
      <ion:page:title tag="h1" />
      <ion:article:subtitle title tag="h2" />
      <ion:article:content />
       <ion:article:medias type="picture">
          <div class="col-xs-12 col-sm-4 col-md-2">
            <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="media-galery">
              <img src="<ion:media:src size="200, 150" method="adaptive" />" alt="<ion:media:title />" >
            </a>
          </div>
        </ion:article:medias>
          <div class="row media-object-video">   
            <ion:article:medias type="video">
            <div class="video-container">
              <div class="col-md-12 embed-responsive embed-responsive-16by9">            
                <iframe src="<ion:media:src />" class="embed-responsive-item media-object-video"> </iframe>              
              </div>
            </div>
            </ion:article:medias>       
          </div>
      </div>
      </ion:article>
    </ion:articles>
  </div>
<ion:partial view="footer" />
            