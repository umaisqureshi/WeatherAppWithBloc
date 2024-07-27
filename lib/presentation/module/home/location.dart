import 'dart:developer';
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';

class UserLocation {
  static Future<String> determinePosition() async {
    bool serviceEnabled;
    GeoCode geoCode = GeoCode();

    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
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
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position position = await Geolocator.getCurrentPosition();
    Address address = await geoCode.reverseGeocoding(
        latitude: position.latitude, longitude: position.longitude);
    log(address.city.toString());
    return address.city.toString();
  }
}
