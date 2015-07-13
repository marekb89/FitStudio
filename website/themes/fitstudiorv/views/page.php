<ion:partial view="header" />

  <ion:articles>
    <ion:article>
      <article>
        <div class="row">
          <div class="col-sm-12 sport <ion:article:name />">
            <ion:title tag="h1" class="sport-title" />
            <ion:subtitle tag="h2" />
            <ion:content />
          </div>
        </div>
        <ion:medias:count type="picture" is_not="0">
          <div class="row">
            <div class="col-sm-12 sport <ion:article:name />">
              <h2 class="sport-title">Fotogaléria</h2>
            </div>
            <ion:article:medias type="picture">
              <div class="col-xs-6 col-sm-3 col-md-2">
                <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
                  <img src="<ion:media:src size="180, 100" method="adaptive" />" alt="<ion:media:title />" >
                </a>
              </div>
            </ion:article:medias>
          </div>
        </ion:medias:count>
        <ion:medias:count type="video" is_not="0">
          <div class="row">
            <div class="col-sm-12 sport <ion:article:name />">
              <h2 class="sport-title">Videogaléria</h2>
            </div>
            <ion:article:medias type="video">
              <div class="col-sm-6">
                <div class="video-container">
                  <div class="embed-responsive embed-responsive-16by9">            
                    <iframe src="<ion:media:src />" class="embed-responsive-item media-object-video"> </iframe>              
                  </div>
                </div>
              </div>
            </ion:article:medias>
          </div>
        </ion:medias:count>
      </article>
    </ion:article>
  </ion:articles>      
   
<ion:partial view="footer" />