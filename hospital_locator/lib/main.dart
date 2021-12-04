// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:hospital_locator/features/location/domain/usecases/getCurrentLocation.dart';
// import 'package:hospital_locator/features/location/presentation/provider/application_provider.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(HospitalLocator());
// }

// class HospitalLocator extends StatefulWidget {
//   @override
//   _HospitalLocatorState createState() => _HospitalLocatorState();
// }

// class _HospitalLocatorState extends State<HospitalLocator> {
//   final String _title = "Hospital locator";
//   late GoogleMapController _googleMapController;
//   late ApplicationBloc _appplicationBloc;

//   @override
//   void initState() {
//     _appplicationBloc = ApplicationBloc();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _googleMapController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider.value(
//       value: _appplicationBloc,
//       child: MaterialApp(
//         title: _title,
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           body: SafeArea(
//               child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: 100,
//                   child: TextField(),
//                 ),
//                 Container(
//                   height: 400,
//                   child: Consumer<ApplicationBloc>(
//                     builder: (_, appBloc, child) {
//                       return Container(
//                         child: MapView(
//                           lattitude: appBloc.location.longitude,
//                           longitude: appBloc.location.longitude,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Container(
//                   height: 100,
//                 )
//               ],
//             ),
//           )),
//         ),
//       ),
//     );
//   }
// }

// class MapView extends StatelessWidget {
//   final double lattitude;
//   final double longitude;
//   const MapView({Key? key, required this.lattitude, required this.longitude})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: GoogleMap(
//         initialCameraPosition:
//             CameraPosition(target: LatLng(lattitude, longitude), zoom: 12),
//       ),
//     );
//   }
// }
