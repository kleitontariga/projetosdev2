import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
$ cd google_maps_in_flutter
$ flutter pub add google_maps_flutter
Resolving dependencies...
  async 2.6.1 (2.8.2 available)
  charcode 1.2.0 (1.3.1 available)
+ flutter_plugin_android_lifecycle 2.0.3
+ google_maps_flutter 2.0.8
+ google_maps_flutter_platform_interface 2.1.1
  matcher 0.12.10 (0.12.11 available)
  meta 1.3.0 (1.7.0 available)
+ plugin_platform_interface 2.0.1
+ stream_transform 2.0.0
  test_api 0.3.0 (0.4.3 available)
Downloading google_maps_flutter 2.0.8...
Downloading flutter_plugin_android_lifecycle 2.0.3...
Changed 5 dependencies!