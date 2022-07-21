import 'package:curzo_avanzado_flutter_plat/places/ui/widgets/card_image_list.dart';
import 'package:curzo_avanzado_flutter_plat/widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Bienvenido"), const CardImageList()],
    );
  }
}
