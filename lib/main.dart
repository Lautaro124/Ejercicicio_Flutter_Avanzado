import 'package:curzo_avanzado_flutter_plat/firebase_options.dart';
import 'package:curzo_avanzado_flutter_plat/places/bloc/place_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'platzi_trips_cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  Widget build(BuildContext context) {
    initFirebase();
    return BlocProvider(
        bloc: PlaceBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          //home: PlatziTrips()
          home: const PlatziTripsCupertino(),
        ));
  }
}
