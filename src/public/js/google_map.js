function initMap() {
    var coordinates = {lat: 34.1012441, lng: -118.3436836};
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 10,
        center: coordinates
    });
    var marker = new google.maps.Marker({
        position: coordinates,
        map: map
    });
}
