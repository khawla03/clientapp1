/*import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;


class ApplicationBloc  {
  final geoLocatorService = GeolocatorService();
  final placesService = PlacesService();
  final markerService = MarkerService();

  //Variables
  Position currentLocation;
  List<PlaceSearch> searchResults;
  StreamController<Place> selectedLocation = StreamController<Place>();
  StreamController<LatLngBounds> bounds = StreamController<LatLngBounds>();
  Place selectedLocationStatic;
  String placeType;
  List<Place> placeResults;
  List<Marker> markers = List<Marker>();


  ApplicationBloc() {
    setCurrentLocation();
  }


  setCurrentLocation() async {
    currentLocation = await geoLocatorService.getCurrentLocation();
    selectedLocationStatic = Place(name: null,
      geometry: Geometry(location: Location(
          lat: currentLocation.latitude, lng: currentLocation.longitude),),);
    //notifyListeners();
  }

  searchPlaces(String searchTerm) async {
    searchResults = await placesService.getAutocomplete(searchTerm);
    //notifyListeners();
  }


  setSelectedLocation(String placeId) async {
    var sLocation = await placesService.getPlace(placeId);
    selectedLocation.add(sLocation);
    selectedLocationStatic = sLocation;
    searchResults = null;
    //notifyListeners();
  }

  clearSelectedLocation() {
    selectedLocation.add(null);
    selectedLocationStatic = null;
    searchResults = null;
    placeType = null;
    //notifyListeners();
  }

  togglePlaceType(String value, bool selected) async {
    if (selected) {
      placeType = value;
    } else {
      placeType = null;
    }

    if (placeType != null) {
      var places = await placesService.getPlaces(
          selectedLocationStatic.geometry.location.lat,
          selectedLocationStatic.geometry.location.lng, placeType);
      markers= [];
      if (places.length > 0) {
        var newMarker = markerService.createMarkerFromPlace(places[0],false);
        markers.add(newMarker);
      }

      var locationMarker = markerService.createMarkerFromPlace(selectedLocationStatic,true);
      markers.add(locationMarker);

      var _bounds = markerService.bounds(Set<Marker>.of(markers));
      bounds.add(_bounds);

      notifyListeners();
    }
  }



  @override
  void dispose() {
    selectedLocation.close();
    bounds.close();
    super.dispose();
  }}

class GeolocatorService {

  Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
  class MarkerService {

  LatLngBounds bounds(Set<Marker> markers) {
  if (markers == null || markers.isEmpty) return null;
  return createBounds(markers.map((m) => m.position).toList());
  }

  LatLngBounds createBounds(List<LatLng> positions) {
  final southwestLat = positions.map((p) => p.latitude).reduce((value, element) => value < element ? value : element); // smallest
  final southwestLon = positions.map((p) => p.longitude).reduce((value, element) => value < element ? value : element);
  final northeastLat = positions.map((p) => p.latitude).reduce((value, element) => value > element ? value : element); // biggest
  final northeastLon = positions.map((p) => p.longitude).reduce((value, element) => value > element ? value : element);
  return LatLngBounds(
  southwest: LatLng(southwestLat, southwestLon),
  northeast: LatLng(northeastLat, northeastLon)
  );
  }

  Marker createMarkerFromPlace(Place place, bool center) {
  var markerId = place.name;
  if (center) markerId = 'center';

  return Marker(
  markerId: MarkerId(markerId),
  draggable: false,
  visible: (center) ? false : true,
  infoWindow: InfoWindow(
  title: place.name, snippet: place.vicinity),
  position: LatLng(place.geometry.location.lat,
  place.geometry.location.lng)
  );
  }


  }




  class PlacesService {
  final key = 'YOUR_KEY';

  Future<List<PlaceSearch>> getAutocomplete(String search) async {
  var url =
  'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&types=(cities)&key=$key';
  var response = await http.get(url);
  var json = convert.jsonDecode(response.body);
  var jsonResults = json['predictions'] as List;
  return jsonResults.map((place) => PlaceSearch.fromJson(place)).toList();
  }

  Future<Place> getPlace(String placeId) async {
  var url =
  'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';
  var response = await http.get(url);
  var json = convert.jsonDecode(response.body);
  var jsonResult = json['result'] as Map<String,dynamic>;
  return Place.fromJson(jsonResult);
  }

  Future<List<Place>> getPlaces(double lat, double lng,String placeType) async {
  var url = 'https://maps.googleapis.com/maps/api/place/textsearch/json?location=$lat,$lng&type=$placeType&rankby=distance&key=$key';
  var response = await http.get(url);
  var json = convert.jsonDecode(response.body);
  var jsonResults = json['results'] as List;
  return jsonResults.map((place) => Place.fromJson(place)).toList();
  }
  }



class PlaceSearch {
  final String description;
  final String placeId;

  PlaceSearch({this.description, this.placeId});

  factory PlaceSearch.fromJson(Map<String,dynamic> json){
    return PlaceSearch(
        description: json['description'],
        placeId: json['place_id']
    );
  }
}*/