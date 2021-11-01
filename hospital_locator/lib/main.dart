import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital_locator/features/location/domain/usecases/getCurrentLocation.dart';

void main() {
  runApp(HospitalLocator());
}

class HospitalLocator extends StatefulWidget {
  @override
  _HospitalLocatorState createState() => _HospitalLocatorState();
}

class _HospitalLocatorState extends State<HospitalLocator> {
  // CameraPosition _cameraPosition = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  final String _title = "Hospital locator";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
            child: Stack(
          children: [
            StreamBuilder(
              stream: GetCurrentLocation().getCurrentLocation(),
              builder: (context, AsyncSnapshot<Position> snapshot) {
                if (snapshot.hasError) {
                  return Container(
                    child: Center(
                      child: Text("error occured, please try again"),
                    ),
                  );
                }
                if (!snapshot.hasData || snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: Text("loading...."),
                    ),
                  );
                }

                return GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target: LatLng(
                            snapshot.data!.latitude, snapshot.data!.longitude),
                        zoom: 14));
              },
            )
          ],
        )),
      ),
    );
  }
}
