var loc = {
  globalLat: -34.397,
  globalLng: 150.644
};


$(document).on('ready',function(){
	var map = new google.maps.Map(document.getElementById('map'), {
		center: {lat: loc.globalLat, lng: loc.globalLng},
		scrolwheel: true,
		zoom: 4
	});
});

$(document).on('click',"#new-loc",function(){
  $.ajax({
    type: "GET",
    url: "/locations/show",
    success: function(data){
      var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: parseInt(data.lat), lng: parseInt(data.lng)},
        scrolwheel: true,
        zoom: 4
      });
      loc.globalLat = data.lat;
      loc.globalLng = data.lng;
      return false;
    }
  }) 
});

$(document).on('click','#save-loc', function(){
  $.ajax({
    type: "POST",
    url: "/locations",
    data: {location: {lat: loc.globalLat, lng: loc.globalLng}},
    success: function(data){
      return false;
    },
    error: function(data){
      return;
    }
  })
});