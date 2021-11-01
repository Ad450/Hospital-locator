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
  late GoogleMapController _googleMapController;

  // CameraPostion _initialCameraPosition =CameraPosition(
  //                         target: LatLng(
  //                             snapshot.data!.latitude, snapshot.data!.longitude),
  //                         zoom: 17,
  //                       ),

  CameraPosition _initialCameraPosition(
      {required double lattitude, required double longitude}) {
    return CameraPosition(target: LatLng(lattitude, longitude), zoom: 17);
  }

  _onMapCreated(GoogleMapController googleMapController) {
    _googleMapController = googleMapController;
  }

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
              child: Column(
            children: [
              Form(child: Container(height: 100, child: TextFormField())),
              StreamBuilder(
                stream: getPositionStreamFromFuture(),
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
                  
                  return Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      child: GoogleMap(
                        initialCameraPosition: _initialCameraPosition(
                            lattitude: snapshot.data!.latitude,
                            longitude: snapshot.data!.longitude),
                        onMapCreated: _onMapCreated,
                        markers: {
                          Marker(
                              markerId: MarkerId("origin"),
                              infoWindow: InfoWindow(title: "current location"),
                              position: LatLng(snapshot.data!.latitude,
                                  snapshot.data!.longitude),
                              onTap: () {
                                _googleMapController.animateCamera(
                                  CameraUpdate.newCameraPosition(
                                    CameraPosition(
                                        target: LatLng(snapshot.data!.latitude,
                                            snapshot.data!.longitude),
                                        zoom: 19,
                                        tilt: 1.0),
                                  ),
                                );
                              })
                        },
                      ),
                    ),
                  );
                },
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 50,
                  )
                ],
              )
            ],
          )),
        ),
        
      ),
    );
  }
}

Stream<Position> getPositionStreamFromFuture() {
  return Stream.fromFuture(Geolocator.getCurrentPosition());
}

