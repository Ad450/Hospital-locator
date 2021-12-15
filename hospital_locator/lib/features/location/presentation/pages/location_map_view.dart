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
      child: BlocBuilder<LocationCubit, LocationState>(
        builder: (_, state) => state.maybeMap(
            orElse: () => Center(child: Text("could not load map")),
            loaded: (state) => GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                        state.location.lattitude, state.location.longitude),
                  ),
                ),
            error: (state) => Center(child: Text(state.error))),
      ),
    );
  }
}
