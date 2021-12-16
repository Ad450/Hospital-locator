import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_locator/features/location/presentation/state/location/location_cubit.dart';
import 'package:hospital_locator/features/location/presentation/state/prediction/prediction_cubit.dart';

class PredictionView extends StatefulWidget {
  const PredictionView({Key? key}) : super(key: key);

  @override
  _PredictionViewState createState() => _PredictionViewState();
}

class _PredictionViewState extends State<PredictionView> {
  final _predictionController = TextEditingController();

  void _getPredictions() {
    if (mounted) {
      context
          .watch<PredictionCubit>()
          .getSearchedLocation(_predictionController.value.text.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: TextField(
              controller: _predictionController,
              autofocus: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              cursorHeight: 15,
              showCursor: true,
              onEditingComplete: () => _getPredictions(),
            ),
          ),
          // Opacity(
          //   opacity: 0,
          //   child: SizedBox(
          //     height: 300,
          //     child: BlocBuilder<PredictionCubit, PredictionState>(
          //       buildWhen: (_, state) => state.maybeMap(
          //           orElse: () => false, loaded: (state) => true),
          //       builder: (_, state) => Opacity(
          //           opacity: 0,
          //           child:
          //               ListView.builder(itemBuilder: (_, i) => Container())),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}



          // Expanded(
          //   child: BlocBuilder<PredictionCubit, PredictionState>(
          //     buildWhen: (_, state) =>
          //         state.maybeMap(orElse: () => false, loaded: (state) => true),
          //     builder: (_, state) => Opacity(
          //         opacity: 0,
          //         child: ListView.builder(itemBuilder: (_, i) => Container())),
          //   ),
          // )