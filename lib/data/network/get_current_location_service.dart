import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:wireframe_flaxen/data/app_exceptions.dart';

class GetLocation with ChangeNotifier{

  String address = '';
  Position? position;
  Future<String>getCurrentLocation() async {
    try{
      Position position1 = await determinePosition();
      List<Placemark> placemarks = await placemarkFromCoordinates(
          position1.latitude, position1.longitude);
      address = placemarks.toString();
      print('${position1.latitude}  ${position1.longitude}');
    }
    catch(e){
      print(e.toString());
    }
    return address;

  }

  Future<Position> determinePosition() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Permissions are denied');
      }
    }
    return await Geolocator.getCurrentPosition();
  }

}
