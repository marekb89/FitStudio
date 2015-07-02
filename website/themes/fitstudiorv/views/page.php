<ion:partial view="header" />
    
    <div class="row">
      <ion:articles limit="1">
        <ion:article>
          <div class="col-md-12">
            <ion:title tag="h1" />
            <ion:content />
          </div>
          <ion:medias type="picture">
            <div class="col-xs-6 col-sm-3 col-md-2">
              <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
                <img src="<ion:media:src size="320, 180" method="adaptive" />" alt="<ion:media:title />">
              </a>
            </div>
          </ion:medias>
        </ion:article>
      </ion:articles>
    </div>

<ion:partial view="footer" />