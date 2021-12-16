import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital_locator/features/location/presentation/state/location/location_cubit.dart';

class LocationMapView extends StatefulWidget {
  const LocationMapView({Key? key}) : super(key: key);

  @override
  _LocationMapViewState createState() => _LocationMapViewState();
}

class _LocationMapViewState extends State<LocationMapView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(7.946527, -1.023194),
          ),
        ));
  }
}
