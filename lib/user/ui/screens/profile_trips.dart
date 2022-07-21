import 'package:curzo_avanzado_flutter_plat/user/ui/screens/profile_header.dart';
import 'package:curzo_avanzado_flutter_plat/user/ui/widgets/profile_background.dart';
import 'package:curzo_avanzado_flutter_plat/user/ui/widgets/profile_places_list.dart';
import 'package:flutter/material.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const ProfileBackground(),
        ListView(
          children: <Widget>[const ProfileHeader(), ProfilePlacesList()],
        ),
      ],
    );
  }
}
