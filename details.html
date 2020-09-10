
	
        <script src="http://maps.google.com/maps/api/js?libraries=places&region=uk&language=en&sensor=true"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Rating Success...!');</script>
<%}%>
    
<style>
table, th, td {
    border: 2px solid black;
    padding: 5px;
}
table {
    border-spacing: 10px;
}
</style>


<%
    String username = session.getAttribute("username").toString();
    String placename = request.getParameter("placename");
    String category = request.getParameter("category");
    String image = request.getParameter("image");
    
%>

        <center>
        <h1 class="title"><font style="italic" color="blue">Rating</h1></center>
        <form name="myform" id="loginForm" action="detailsact.jsp?image=<%=image%>" method="post"   onsubmit="return validateform()" >
        
        <center><table style="width:50%">
       <tr>
       <th  width="191" height="43"><font color="orange">User Name</th>
       <th width="218"><input id="username" name="username" readonly="" value="<%=username%>" /></th>
       </tr>
       <tr>
       <th  width="191" height="43"><font color="orange">Place Name</th>
       <th width="218"><input id="placename" name="placename" readonly="" value="<%=placename%>"/></th>
       </tr>
       <tr>
       <th  width="191" height="43"><font color="orange">Category</th>
       <th width="218"><input id="category" name="category" readonly="" value="<%=category%>"/></th>
       </tr>
       <tr>
       <th  width="191" height="43"><font color="orange">Image</th>
       <th width="218"><img src="Gallery/<%=image%>" width="100" height="100"></th>
       </tr>
       <tr>
       <th height="65"><font color="orange">Description</th>
       <th><textarea name="description" rows="4" cols="22" style="text-align: left;direction: ltr;"></textarea></th>
       </tr>
       <tr>
       <th  width="191" height="43"><font color="orange">Latitude</th>
       <th><input name="latitude" class="MapLat" value="" type="text" placeholder="Latitude"></input></th>
       </tr>
       <tr>
       <th  width="191" height="43"><font color="orange">Longitude</th>
       <th><input name="longitude" class="MapLon" value="" type="text" placeholder="Longitude"></input></th>
       </tr>
       <tr>
       <th  width="191" height="43"><font color="orange">Address</th>
       <th><textarea id="searchTextField" name="address" rows="4" cols="22" style="text-align: left;direction: ltr;"></textarea></th>
       </tr> 
       <tr>
       <th height="43"><font color="orange">Rating</th>
       <th><select id="s1" name="rating" style="width:170px;" required="">
       <option>--Select--</option>
       <option>1</option>
       <option>2</option>
       <option>3</option>
       <option>4</option>
       <option>5</option>
       </select></th>
       </tr>
       </table>
              </form>

           <br><br>
       <input name="submit" type="submit" value="Add" />
       <input type="button" value="Go Back!" onclick="history.go(-1)">
        </center></form>
        <center><br><br><br>
        <center><br>
        <div id="map_canvas" style="height: 350px;width: 500px;margin: 0.6em;"></div>
        <script>
     $(function () {
         var lat = 17.429604, 
             lng = 78.453047,
             latlng = new google.maps.LatLng(lat, lng),
             image = 'http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png';
         //zoomControl: true,
         //zoomControlOptions: google.maps.ZoomControlStyle.LARGE,
         var mapOptions = {
             center: new google.maps.LatLng(lat, lng),
             zoom: 13,
             mapTypeId: google.maps.MapTypeId.ROADMAP,
             panControl: true,
             panControlOptions: {
                 position: google.maps.ControlPosition.TOP_RIGHT
             },
             zoomControl: true,
             zoomControlOptions: {
                 style: google.maps.ZoomControlStyle.LARGE,
                 position: google.maps.ControlPosition.TOP_left
             }
         },
         map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions),
             marker = new google.maps.Marker({
                 position: latlng,
                 map: map,
                 icon: image
             });
         var input = document.getElementById('searchTextField');
         var autocomplete = new google.maps.places.Autocomplete(input, {
             types: ["geocode"]
         });
         autocomplete.bindTo('bounds', map);
         var infowindow = new google.maps.InfoWindow();
         google.maps.event.addListener(autocomplete, 'place_changed', function (event) {
             infowindow.close();
             var place = autocomplete.getPlace();
             if (place.geometry.viewport) {
                 map.fitBounds(place.geometry.viewport);
             } else {
                 map.setCenter(place.geometry.location);
                 map.setZoom(17);
             }
             moveMarker(place.name, place.geometry.location);
             $('.MapLat').val(place.geometry.location.lat());
             $('.MapLon').val(place.geometry.location.lng());
         });
         google.maps.event.addListener(map, 'click', function (event) {
             $('.MapLat').val(event.latLng.lat());
             $('.MapLon').val(event.latLng.lng());
             infowindow.close();
                     var geocoder = new google.maps.Geocoder();
                     geocoder.geocode({
                         "latLng":event.latLng
                     }, function (results, status) {
                         console.log(results, status);
                         if (status == google.maps.GeocoderStatus.OK) {
                             console.log(results);
                             var lat = results[0].geometry.location.lat(),
                                 lng = results[0].geometry.location.lng(),
                                 placeName = results[0].address_components[0].long_name,
                                 latlng = new google.maps.LatLng(lat, lng);
                             moveMarker(placeName, latlng);
                             $("#searchTextField").val(results[0].formatted_address);
                         }
                     });
         });
        
         function moveMarker(placeName, latlng) {
             marker.setIcon(image);
             marker.setPosition(latlng);
             infowindow.setContent(placeName);
             //infowindow.open(map, marker);
         }
     });
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEGQITyiWHrfQlkguvuJVAywlGcUv2r8k&callback=myMap"></script>
          </center>
