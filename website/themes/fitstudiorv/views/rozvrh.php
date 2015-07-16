      <div class="row">
        <ion:page id="rozvrh">
        <div class="col-md-8">
          <ion:page:title tag="h2" class="sport-title" />
          <ion:articles>
            <ion:article>
              <div class="row rozvrh-body">
                <div class="col-sm-2 day">
                  <span>
                    <ion:title />
                  </span>
                </div>
                <ion:element:sporty>
                  <ion:items>
                    <div class="col-sm-2 rozvrh sport-<ion:sport:values:value />">
                      <span>
                        <ion:sport:values:label />
                      </span>
                      <span>
                        <ion:cas-od:value /> - <ion:cas-do:value />
                      </span>  
                    </div>
                  </ion:items>                
                </ion:element:sporty>
              </div>            
            </ion:article>
          </ion:articles>
        </div>
        </ion:page>
        <ion:page id="happy-fit-studio">
        <div class="col-md-4">
        <ion:page:title tag="h2" class="sport-title" />
        <ion:articles>
          <ion:article:medias type="video">
              <div class="col-md-4>
                <div class="video-container thumbnail">
                  <div class="embed-responsive embed-responsive-16by9">            
                    <iframe src="<ion:media:src />" class="embed-responsive-item media-object-video"> </iframe>              
                  </div>
                </div>
              </div>
            </ion:article:medias>
                    </ion:articles>
        </ion:page>
        
        
      </div> 