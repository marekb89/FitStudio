<ion:partial view="header" />
    <hr />

    <div class="row">
      <ion:articles>
        <ion:article>
          <div class="col-md-12 text-contakt">
            <ion:article:title tag="h1" />
            <hr />
            <ion:article:content />  
          </div>
        </ion:article>
      </ion:articles>
    </div>
    <div class="row">
      <div class="col-md-12">
        <hr />
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
          <div style="overflow:hidden;height:400px;width:100%;">
            <div id="gmap_canvas" style="height:400px;width:100%;">
            </div>
            <style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
            <a class="google-map-code" href="http://premium-wordpress-themes.org" id="get-map-data">premium-wordpress-themes.org</a>
          </div><script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://wptiger.com" id="get-map-data">http://wptiger.com/</a></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:16,center:new google.maps.LatLng(48.6522571,20.52750059999994),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(48.6522571, 20.52750059999994)});infowindow = new google.maps.InfoWindow({content:"<b>Ro&#382;&#328;ava</b><br/>&Scaron;af&aacute;rikov&aacute; 106<br/>04801 Ro&#382;&#328;ava" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
        <br />
      </div>
    </div>
    
<ion:partial view="footer" />