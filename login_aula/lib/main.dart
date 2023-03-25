import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  GoogleMap(
  initialCameraPosition: CameraPosition(
    target: LatLng(37.77483, -122.41942), // coordenadas de San Francisco, CA
    zoom: 12, // o nível de zoom inicial do mapa
  ),
),
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLogin()
    );
  }
}
