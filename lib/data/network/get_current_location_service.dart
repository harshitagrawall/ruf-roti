import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:wireframe_flaxen/data/app_exceptions.dart';

class GetLoacation with ChangeNotifier {
  Position? _position;
  var lattitude, longitude;

  // Future<String> getCurrentLocation() async {
  //   try {
  //     Position position = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.high);
  //     lattitude = position.latitude.toString();
  //     longitude = position.longitude.toString();
  //
  //     return ' lattitude:- ${lattitude.toString()}  longitude:- ${longitude.toString()} ';
  //   } catch (e) {
  //     throw InternalServerException();
  //   }
  // }

  void getCurrentLocation() async {
    Position position = await _determinePostion();
    lattitude = position.latitude;
    longitude = position.longitude;
    print('$lattitude and $longitude');
  }
}

Future<Position> _determinePostion() async {
  LocationPermission permission;
  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
  }
  if (permission == LocationPermission.denied) {
    return Future.error("Permissions are denied");
  }
  return Geolocator.getCurrentPosition();
}
