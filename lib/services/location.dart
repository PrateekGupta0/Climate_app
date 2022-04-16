import 'dart:ffi';

import 'package:geolocator/geolocator.dart';


class Location{
  double _latitude;
  double _longitude;
  Future<void> getCurrentLocation() async{
    //to handle exception we use try and catch just like in java also use of throw key word.
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      _latitude=position.latitude;
      _longitude=position.longitude;
    }
    catch(e){
      print(e);
      _latitude=0.0;
      _longitude=0.0;
    }
  }
  double getlatitude(){
    return _latitude;
  }

  double getlongitude(){
    return _longitude;
  }
}