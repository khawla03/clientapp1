import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'localisation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter_google_places/flutter_google_places.dart';


TextEditingController textfield_controller =TextEditingController();
class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final _texte_controller = TextEditingController();
  String curpos ='votre location' ;
  List<Marker> myMarker = [];
  _handletap(LatLng tappos) async{
    print(".........................");
    print(tappos);
    myMarker =[];
    myMarker.add(
        Marker(
          markerId: MarkerId(tappos.toString()),
          position: tappos,
        ));
    lat=tappos.latitude;
    long=tappos.longitude;
    curpos  = await _getLocationAddress(lat ,long) as String;
    setState((){

      /* curpos  =  _getLocationAddress(lat ,long) as String;*/
      textfield_controller.text=curpos;
    });
  }

  void show_location() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    long = position.longitude;
    lat = position.latitude;
    curpos  = await _getLocationAddress(lat ,long) as String;
    setState(() {
      textfield_controller.text=curpos;
    });

  }

  double long = 3.05997, lat = 36.7762;
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState() {
    _determinePosition();
    super.initState();

  }

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _posinit = CameraPosition(
    target: LatLng(36.7762, 3.05997),
    zoom: 14.4746,
  );
  String dropdownValue = 'Domicile';
  IconData typeIcon= Icons.home ;

  @override
  Widget build(BuildContext context) {


    final CameraPosition _kpos = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng( lat, long),
        tilt: 59.440717697143555,
        zoom: 17.0);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Navigator.push( context, MaterialPageRoute(builder: (_) => Localisation()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          'Localisation',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              zoomControlsEnabled: false,
              initialCameraPosition: _kpos,
              markers: Set.from(myMarker),
              onTap: _handletap,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Column(
              children:  [
                TextField(
                  controller: textfield_controller,
                  decoration: InputDecoration(
                    icon: Icon(Icons.push_pin),
                    filled: true,
                    fillColor: Colors.white54,
                    hintText: curpos,
                    labelText: curpos,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF673695)),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF673695),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    const Icon(Icons.filter_alt,
                        color: Colors.black45
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: MediaQuery.of(context).size.width -40,
                      color: Colors.white54,
                      //padding: const EdgeInsets.only(bottom: 0, left: 35),
                      //margin: const EdgeInsets.only(bottom: 0),
                      child: Column(
                        children: [
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(typeIcon),
                            iconSize: 24,
                            elevation: 16,
                            dropdownColor: Colors.white,
                            isExpanded: true,
                            underline: Container(
                              height: 0,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xFF673695),
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                                if (dropdownValue == 'Domicile')
                                {
                                  typeIcon = Icons.home;
                                }
                                if (dropdownValue == 'Travail')
                                {
                                  typeIcon = Icons.work;
                                }
                                if (dropdownValue == 'Point relais')
                                {
                                  typeIcon = Icons.location_on;
                                }
                              });
                            },
                            items: <String>['Domicile', 'Travail', 'Point relais']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text('   $value'),
                              );
                            }).toList(),
                          ),
                          Container(height: 1,color: Color(0xFF673695),)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        color: const Color(0xFF673695),
        child: TextButton(
          onPressed: () {
            Navigator.push( context, MaterialPageRoute(builder: (_) => Localisation()));
          }, //changer le mot de passe
          child: const Text(
            'ajouter l’addresse',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed:
        _findMyPosition,
        child: Icon(Icons.location_searching_outlined),
      ),
    );
  }

  Future<void> _findMyPosition() async {
    show_location();
    show_location();
    final CameraPosition _kpos = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng( lat, long),
        tilt: 59.440717697143555,
        zoom: 17.0);
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kpos));
  }
  //final Geolocator _geolocator = Geolocator();
  //Position? _currentPosition  ;
  late String _isoCountryCode ;
  Future<String> _getLocationAddress(double latitude, double longitude) async {
    List<Placemark> newPlace =
    await placemarkFromCoordinates(latitude, longitude);
    Placemark placeMark = newPlace[0];
    String name = placeMark.name as String;
    // String subLocality = placeMark.subLocality;
    String locality = placeMark.locality as String;
    String administrativeArea = placeMark.administrativeArea as String;
    String subAdministrativeArea = placeMark.administrativeArea as String;
    String postalCode = placeMark.postalCode as String;
    String country = placeMark.country as String;
    // String subThoroughfare = placeMark.subThoroughfare;
    String thoroughfare = placeMark.thoroughfare as String;
    _isoCountryCode = placeMark.isoCountryCode as String;
    curpos="$name, $thoroughfare, $locality, $administrativeArea, $postalCode, $country";
    print("------------------$curpos------------------------------ \n ");
    return "$name, $thoroughfare, $locality, $administrativeArea, $postalCode, $country";
  }
}
