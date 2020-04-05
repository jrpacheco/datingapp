import 'package:dating_app/commons/position_builder.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Localization extends StatefulWidget {
//  @override
//  _LocalizationState createState1() => _LocalizationState();

  @override
  State<StatefulWidget> createState() {
    return new _LocalizationState();
  }
}

class _LocalizationState extends State<Localization> {
  Geolocator _geolocator = Geolocator();
  Position userLocation;

  void checkPermission() {
    _geolocator.checkGeolocationPermissionStatus().then((status) {
      print('status: $status');
    });
    _geolocator
        .checkGeolocationPermissionStatus(
            locationPermission: GeolocationPermission.locationAlways)
        .then((status) {
      print('always status: $status');
    });
    _geolocator
        .checkGeolocationPermissionStatus(
            locationPermission: GeolocationPermission.locationWhenInUse)
        .then((status) {
      print('whenInUse status: $status');
    });
  }

  @override
  void initState() {
    super.initState();

    checkPermission();

    _getLocation().then((data) {
      setState(() {
        userLocation = data;
      });
    });
  }

  Future<Position> _getLocation() async {
    var currentLocation;
    try {
      currentLocation = await _geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  }

  @override
  Widget build(BuildContext context) {
    return PositionBuilder(
      context: context,
      location: _getLocation(),
    );
  }
}
