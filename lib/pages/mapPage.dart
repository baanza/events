import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/config/events.dart';
import 'package:myapp/widgets/bottommapsheet.dart';
import 'package:location/location.dart';

class Mappage extends StatefulWidget {
  const Mappage({super.key});

  @override
  State<Mappage> createState() => _MappageState();
}

class _MappageState extends State<Mappage> {
  Completer<GoogleMapController> completer = Completer<GoogleMapController>();
  Location location = Location();
  LatLng? userlocation;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  Future FocusUser(LatLng position) async {
    final GoogleMapController controller = await completer.future;
    CameraPosition newposition = CameraPosition(target: position, zoom: 14);

    await controller.animateCamera(CameraUpdate.newCameraPosition(newposition));
  }

  Future getUserLocation() async {
    bool service;
    PermissionStatus permission;

    service = await location.serviceEnabled();
    if (!service) {
      service = await location.requestService();
      if (!service) {
        return;
      }
    }

    permission = await location.hasPermission();
    if (permission == PermissionStatus.denied) {
      permission = await location.requestPermission();
      if (permission == PermissionStatus.denied) {
        return;
      }
    }

    location.onLocationChanged.listen((LocationData currentloc) {
      if (currentloc.latitude != null && currentloc.longitude != null) {
        setState(() {
          userlocation = LatLng(currentloc.latitude!, currentloc.longitude!);
          FocusUser(userlocation!);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userlocation == null
              ? const CircularProgressIndicator()
              : GoogleMap(
                  onMapCreated: (GoogleMapController controller) =>
                      completer.complete(controller),
                  initialCameraPosition:
                      CameraPosition(target: userlocation!, zoom: 11.0),
                  markers: {
                    Marker(
                        markerId: const MarkerId("You"),
                        position: userlocation!,
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueBlue),
                         infoWindow: const InfoWindow(title: "You")   
                            ),
                    Marker(
                        markerId: const MarkerId("google"),
                        position: _center,
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueBlue),
                         infoWindow: const InfoWindow(title: "somewhere")   
                            ),
                  },
                ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        filled: true,
                        fillColor: const Color(0xFF252A3E),
                        hintText: "Search...",
                        hintStyle: const TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xff252A3E),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "somewhere, somewhere",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xff252A3E),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "cordinates",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: fake_db.take(2).map((event) {
                    return Dismissible(
                      key: UniqueKey(),
                      child: Bottommapsheet(event: event),
                    );
                  }).toList()),
            ),
          )
        ],
      ),
    );
  }
}
