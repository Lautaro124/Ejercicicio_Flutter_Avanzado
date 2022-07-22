import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {
  final String title;
  final VoidCallback onPress;
  final double? width, height;
  const ButtonGreen({
    Key? key,
    required this.title,
    required this.onPress,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  State<ButtonGreen> createState() => _ButtonGreenState();
}

class _ButtonGreenState extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Container(
        width: widget.width,
        height: widget.height,
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 69, 199, 99),
                Color.fromARGB(255, 44, 198, 83)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
