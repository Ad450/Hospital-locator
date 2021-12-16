import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_locator/features/location/presentation/state/location/location_cubit.dart';
import 'package:hospital_locator/features/location/presentation/state/prediction/prediction_cubit.dart';
import 'package:provider/provider.dart';

class PredictionView extends StatefulWidget {
  const PredictionView({Key? key}) : super(key: key);

  @override
  _PredictionViewState createState() => _PredictionViewState();
}

class _PredictionViewState extends State<PredictionView> {
  final _predictionController = TextEditingController();

  void _getPredictions() {
    if (mounted) {
      Provider.of<PredictionCubit>(context, listen: false)
          .getSearchedLocation(_predictionController.value.text.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  controller: _predictionController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                  cursorHeight: 15,
                  showCursor: true,
                  onEditingComplete: () => _getPredictions(),
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20.0,
                child: IconButton(
                    color: Colors.black87,
                    onPressed: () async => _getPredictions(),
                    icon: Icon(
                      Icons.search,
                      color: Colors.lightBlueAccent,
                      size: 25,
                    )),
              )
            ],
          ),
          // Opacity(
          //   opacity: 0.5,
          //   child: BlocBuilder<PredictionCubit, PredictionState>(
          //     buildWhen: (_, state) =>
          //         state.maybeMap(orElse: () => false, loaded: (state) => true),
          //     builder: (_, state) => Opacity(
          //         opacity: 0,
          //         child: ListView.builder(itemBuilder: (_, i) => Container())),
          //   ),
          // )

          // Opacity(
          //     opacity: 0.5,
          //     child: Container(
          //       height: 100,
          //       color: Colors.white,
          //     ))
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



          