import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:flutter_location/datamodels/user_location.dart';

class LocationService {
  UserLocation _currentLocation;
  var location = Location();
  Future<UserLocation> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
          latitude: userLocation.latitude, longitude: userLocation.longitude);
    } on Exception catch (e) {
      print("could not get location: ${e.toString()}");
    }
  }
}
