import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:wireframe_flaxen/data/app_exceptions.dart';

class GetLoacation {
  var lattitude, longitude;

  Future<String> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      lattitude = position.latitude.toString();
      longitude = position.longitude.toString();

      return ' lattitude:- ${lattitude.toString()}  longitude:- ${longitude.toString()} ';
    } catch (e) {
      throw InternalServerException();
    }
  }
}
