import 'package:flutter/material.dart';
import 'package:flutter_location/services/location_service.dart';
import 'package:flutter_location/views/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Location());
}

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(
        create: (context) => LocationService().locationStream,
        child: MaterialApp(title: 'Flutter Demo', home: HomeView()));
  }
  }
}
