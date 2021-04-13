import 'package:geolocator/geolocator.dart';

class Location {
  double longitude, latitude;
  
  Future<void> getcurrentLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    longitude = position.longitude;
    latitude = position.latitude;
  }
}
