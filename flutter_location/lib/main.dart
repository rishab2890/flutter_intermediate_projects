import 'package:flutter/material.dart';
import 'package:flutter_location/services/location_service.dart';
import 'package:flutter_location/views/home_view.dart';
import 'package:provider/provider.dart';
import 'package:flutter_location/datamodels/user_location.dart';

void main() {
  runApp(Location());
}

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(
        create: (context) => LocationService().locationStream,
        child: MaterialApp(title: 'Flutter Demo', home: HomeView()));
  }
}
