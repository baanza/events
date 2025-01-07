import 'package:geocoding/geocoding.dart' as geo;
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart' as loc;

Future ReverseGeocode(LatLng loc) async {
  List<geo.Placemark> placemarks =
      await geo.placemarkFromCoordinates(loc.latitude, loc.longitude);
  return placemarks;
}

void main() async {
  List placemarks = await ReverseGeocode(LatLng(45.521563, -122.677433));
  print(placemarks);
}
