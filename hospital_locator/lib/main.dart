import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hospital_locator/core/di/configure_dependencies.dart';
import 'package:hospital_locator/features/location/domain/di/location_injector.dart';
import 'package:hospital_locator/features/location/domain/usecases/getCurrentLocation.dart';
import 'package:hospital_locator/features/location/domain/usecases/get_searched_location.dart';
import 'package:hospital_locator/features/location/presentation/pages/location_map_view.dart';
import 'package:hospital_locator/features/location/presentation/state/location/location_cubit.dart';
import 'package:hospital_locator/features/location/presentation/state/prediction/prediction_cubit.dart';

void main() async {
  await Hive.initFlutter();
  await DotEnv.load(fileName: ".env");

  configureDependencies();
  runApp(HospitalLocator());
}

class HospitalLocator extends StatefulWidget {
  @override
  _HospitalLocatorState createState() => _HospitalLocatorState();
}

class _HospitalLocatorState extends State<HospitalLocator> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LocationCubit(
            LocationInjector.resolve<GetCurrentLocation>(),
          )..getCurrentLocation(),
        ),
        BlocProvider(
            create: (_) => PredictionCubit(
                LocationInjector.resolve<GetSearchedLocation>()))
      ],
      child: MaterialApp(
        home: LocationMapView(),
      ),
    );
  }
}
