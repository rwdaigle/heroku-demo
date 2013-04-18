function initMap() {
  var latlng = new google.maps.LatLng(53, -8);
  var myOptions = {
    center: latlng,
    zoom: 4,
    disableDefaultUI: true,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map"), myOptions);
  var marker = new google.maps.Marker({
      position: latlng,
      icon: "https://maps.google.com/mapfiles/ms/icons/purple-dot.png",
      animation: google.maps.Animation.DROP,
      map: map
  });
}

$(document).ready(function(){
  initMap();
});
