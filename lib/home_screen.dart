import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(29.9975, 30.9660),
    zoom: 14.4746,
  );

  static final CameraPosition misrUniversty = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(29.9975, 30.9660),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Set<Marker> markers = {};
  double defLat = 0.0;
  double defLng = 0.0;

  void initState() {
    super.initState();
    getUserLocation();
    var userMarker = Marker(
      markerId: const MarkerId('user_location'),
      position: LatLng(
          locationData?.latitude ?? defLat, locationData?.longitude ?? defLng),
    );
    markers.add(userMarker);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined),label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label:"Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: markers,
      ),
    );
  }

  Location location = Location();
  LocationData? locationData;

  void dispose() {
    super.dispose();
  }

  void getUserLocation() async {
    bool permGranted = await isPermissionGranted();
    if (!permGranted) return;
    bool gpsEnabled = await isServiceEnabled();
    if (!gpsEnabled) return;
    locationData = await location.getLocation(); //can get location
    location.changeSettings(
        accuracy: LocationAccuracy.high, interval: 1000, distanceFilter: 1);
    location.onLocationChanged.listen((newestLocation) {
      locationData = newestLocation;
      updateUserMarker();
    });
  }

  void updateUserMarker() async {
    var userMarker = Marker(
      markerId: const MarkerId('user_location'),
      position: LatLng(
          locationData?.latitude ?? defLat, locationData?.longitude ?? defLng),
    );
    markers.add(userMarker);
    setState(() {});
    final GoogleMapController controller = await _controller.future;
    var newCameraPosition = CameraPosition(
        target: LatLng(locationData?.latitude ?? defLat,
            locationData?.longitude ?? defLng),
        zoom: 19);
    controller.animateCamera(CameraUpdate.newCameraPosition(newCameraPosition));
  }

  Future<bool> isPermissionGranted() async {
    var permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
    }
    return permissionStatus == PermissionStatus.granted;
  }

  Future<bool> isServiceEnabled() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
    }
    return serviceEnabled;
  }
}
