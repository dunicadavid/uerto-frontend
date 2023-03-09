// File created by
// Dunica David-Gabriel <FLTY>
// on 09/03/2023 17:21:06


import 'package:geolocator/geolocator.dart';

class Services {

  /// [ {verifyLocationService} ]  --  verifica daca aplicatia poate folosi locatia userului
  Future<bool> verifyLocationService() async {
      final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if(serviceEnabled) {
        final  LocationPermission checkPermission = await Geolocator.checkPermission();
        if(checkPermission == LocationPermission.denied) {
          return false;
        }
        return true;
      }
      return false;
  }

  Future<Position> getCurrentLocation() async {
    final Position position = await Geolocator.getCurrentPosition();

    return position;
  }

}