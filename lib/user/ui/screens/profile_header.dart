import 'package:curzo_avanzado_flutter_plat/user/ui/widgets/button_bar.dart';
import 'package:curzo_avanzado_flutter_plat/user/ui/widgets/user_info.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0),
    );

    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Column(
        children: <Widget>[
          Row(
            children: const <Widget>[title],
          ),
          UserInfo('assets/img/ann.jpg', 'Anahí Salgado', 'anahi@platzi.com'),
          const ButtonsBar()
        ],
      ),
    );
  }
}
