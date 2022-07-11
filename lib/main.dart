import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
Completer<GoogleMapController> _controller = Completer();

CameraPosition _initialposition = CameraPosition(
  target: LatLng(26.8206, 30.8025),
  zoom : 6,
  bearing : 6,
  tilt : 6,
);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialposition,
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
