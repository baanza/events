import 'package:google_maps_flutter/google_maps_flutter.dart';

class Events {
  final String imagepath;
  final String price;
  final String date;
  final String title;
  final LatLng location;

  Events(
      {required this.imagepath,
      required this.price,
      required this.date,
      required this.title,
      required this.location});
}

List<Events> fake_db = [
  Events(
      imagepath: "assets/images/events1.jpg",
      price: "Free",
      date: "23 January 2025",
      title: "We Lewing",
      location: const LatLng(37.385, 122.0575)
      ),
  Events(
      imagepath: "assets/image/upload1.jpg",
      price: "500",
      date: "3 January 2024",
      title: "Welcome to January",
      location: const LatLng(37.3230, 122.0322)
      ),
  Events(
      imagepath: "assets/images/events3.jpg",
      price: "700",
      date: "10 Februray 2025",
      title: "Lokesheni",
      location: const LatLng(37.3328, 122.0054),),

  Events(
      imagepath: "assets/image/january.jpg",
      price: "500",
      date: "3 January 2024",
      title: "Welcome to January",
      location: const LatLng(37.3328, 122.0054),),
  Events(
      imagepath: "assets/images/events3.jpg",
      price: "700",
      date: "10 Februray 2025",
      title: "Lokesheni",
      location: const LatLng(37.3328, 122.0054),),
  Events(
      imagepath: "assets/image/january.jpg",
      price: "500",
      date: "3 January 2024",
      title: "Welcome to January",
      location:const LatLng(37.3328, 122.0054),),
  Events(
      imagepath: "assets/images/events3.jpg",
      price: "700",
      date: "10 Februray 2025",
      title: "Lokesheni",
      location: const LatLng(37.3328, 122.0054),),
];

List<Map> items = [
  {"item": fake_db[0], "display": true},
  {"item": fake_db[2], "display": true},
  {"item": fake_db[0], "display": true},
];
