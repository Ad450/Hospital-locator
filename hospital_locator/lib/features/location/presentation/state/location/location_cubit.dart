import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hospital_locator/core/app_typedefs.dart';
import 'package:hospital_locator/features/location/data/models/location_model/location_model.dart';
import 'package:hospital_locator/features/location/domain/usecases/getCurrentLocation.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
  GetCurrentLocation _getCurrentLocation;

  LocationCubit(this._getCurrentLocation)
      : super(
          LocationState.initial(
            error: "",
            location: LocationModel(lattitude: 7.946527, longitude: -1.023194),
          ),
        );

  Future<void> getCurrentLocation() async {
    emit(LocationState.loaded(error: state.error, location: state.location));
    final _result = await _getCurrentLocation.call(NoParam());
    _result.fold(
      (l) => emit(
        LocationState.error(error: l.message, location: state.location),
      ),
      (r) => emit(
        LocationState.loaded(error: state.error, location: r),
      ),
    );
  }
}
