import 'package:curzo_avanzado_flutter_plat/widgets/button_green.dart';
import 'package:curzo_avanzado_flutter_plat/widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInWithGoogle();
  }

  Widget signInWithGoogle() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack('', height: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome.\nThis is your travels',
                style: TextStyle(
                  fontSize: 37,
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ButtonGreen(
                title: 'Sign in with google',
                onPress: () {},
                width: 300,
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
