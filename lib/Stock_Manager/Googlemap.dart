import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

class SimpleMap extends StatefulWidget {
  const SimpleMap({Key? key}) : super(key: key);

  @override
  State<SimpleMap> createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> {

  // late GoogleMapController mapController;
  //
  // final LatLng _center = const LatLng(45.5159788, -73.6775849);
  //
  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  // }


  static final LatLng _kMapCenter = LatLng(45.4800928, -73.6328892);

  static final CameraPosition _kInitialPosition =
  CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  late GoogleMapController _controller;

  onMapCreated(GoogleMapController controller) async {
    _controller = controller;
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');
    _controller.setMapStyle(value);
  }

  Set<Marker> _createMarker() {
    return {
      Marker(
          markerId: MarkerId("Vanier College"),
          position: _kMapCenter,
          infoWindow: InfoWindow(title: 'Marker 1'),
          draggable: true
      ),
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: GoogleMap(
        onMapCreated: onMapCreated,
        initialCameraPosition: _kInitialPosition,
        myLocationEnabled: true,
        markers: _createMarker(),
      ),
    );
  }
}
