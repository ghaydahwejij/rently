
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rently/Screens/search.dart';

import 'menu.dart';

class Rmap extends StatefulWidget {
  const Rmap({Key? key}) : super(key: key);

  @override
  State<Rmap> createState() => _MapState();
}

const LatLng currentLocation = LatLng(32.885353, 13.1848);

class _MapState extends State<Rmap> {
  late GoogleMapController mapController; //contrller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation =
  const LatLng(32.885353, 13.1848); //location to show in map

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff004504),
                ), onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Search()));},
              );
            },
          ),
          backgroundColor: Colors.white,
          actions: [

            GestureDetector(child: Image.asset("images/l.png"),
              onTap:()
              {Navigator.push(context,MaterialPageRoute(builder: (context) => Menu()));},),
            SizedBox(width: 15,),
          ],
        ),
        body: GoogleMap(
          //Map widget from google_maps_flutter package
          zoomGesturesEnabled: true, //enable Zoom in, out on map
          initialCameraPosition: CameraPosition(
            //innital position in map
            target: showLocation, //initial position
            zoom: 15.0, //initial zoom level
          ),
          markers: getmarkers(), //markers to show on map
          mapType: MapType.normal, //map type
          onMapCreated: (controller) {
            //method called when map is created
            setState(() {
              mapController = controller;
            });
          },
        ),
      ),
    );
  }

  Set<Marker> getmarkers() {
    var markerIcon= BitmapDescriptor.fromAssetImage(const ImageConfiguration(), 'images/house.png');

    //markers to place on map
    setState(() {
      markers.add(Marker(

        //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow(


        ),

        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker(
        //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(32.846767777057686, 13.291955297024575), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'منزل كبير ',
          snippet: 'مطل على الغابة ',
        ),
        icon:BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker(

        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(32.8811514843474, 13.205928452849221), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'منزل ',
          snippet: 'دورين',
        ),
        icon: BitmapDescriptor.defaultMarker
      ));

      //add more markers here
    });

    return markers;
  }
}
