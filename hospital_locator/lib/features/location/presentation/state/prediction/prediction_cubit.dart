import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hospital_locator/features/location/data/models/predictions_model.dart/prediction_model.dart';
import 'package:hospital_locator/features/location/domain/usecases/get_searched_location.dart';

part 'prediction_cubit.freezed.dart';
part 'prediction_state.dart';

class PredictionCubit extends Cubit<PredictionState> {
  GetSearchedLocation _getSearchedLocation;

  PredictionCubit(this._getSearchedLocation)
      : super(
          PredictionState.initial(error: "", prediction: null),
        );

  Future<void> getSearchedLocation(String place) async {
    emit(PredictionState.loading(
        error: state.error, prediction: state.prediction));
    final _result =
        await _getSearchedLocation.call(GetSearchedLocationParam(query: place));
    _result.fold(
        (l) => emit(PredictionState.error(
            error: l.message, prediction: state.prediction)),
        (r) => emit(PredictionState.loaded(error: state.error, prediction: r)));
  }
}
