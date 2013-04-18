function initMap() {
  var location = {latitude: 37.555, longitude: -122.2687}
  var latLng = new google.maps.LatLng(location.latitude, location.longitude);
  var map = new google.maps.Map(document.getElementById("map"), {
    center: latLng,
    zoom: 4,
    disableDefaultUI: true,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });
  var marker = new google.maps.Marker({
      position: latLng,
      icon: "https://maps.google.com/mapfiles/ms/icons/purple-dot.png",
      animation: google.maps.Animation.DROP,
      map: map
  });
}

$(document).ready(initMap);
