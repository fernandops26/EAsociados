/*$(document).on('ready',function(){

var contentString = '<div><h4 style="color:rgba(0,0,0,.7);margin-bottom:0;">Economistas Asociados</h4><p>Calle las Dalias D1-5 Interior 101 Urb. Miraflores</p></div>';


function initialize() {
  var bangalore = { lat: -5.191711, lng: -80.622265 };
  var map = new google.maps.Map(document.getElementById('mapa-google'), {
    zoom: 17,
    center: bangalore
  });

  // This event listener calls addMarker() when the map is clicked.
  google.maps.event.addListener(map, 'click', function(event) {
    addMarker(event.latLng, map);
  });

  // Add a marker at the center of the map.
  addMarker(bangalore, map);
}

// Adds a marker to the map.
function addMarker(location, map) {
  // Add the marker at the clicked location, and add the next-available label
  // from the array of alphabetical characters.
  var marker = new google.maps.Marker({
    position: location,
    map: map
  });

var infowindow = new google.maps.InfoWindow({
  content: contentString
});

marker.addListener('click', function() {
    infowindow.open(map, marker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

});*/