import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safehere/colors.dart';
import 'package:safehere/features/auth/screens/login_screen.dart';
import 'package:safehere/features/auth/screens/signup_screen.dart';
import 'package:safehere/text_styles.dart';
import 'package:safehere/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(gradient: backgroundGradient),
      ),
      SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/logo_small.svg'),
                Text(
                  'SafeHere',
                  style: heading,
                ),
                Text('Welcome to the world\'s most safe platform',
                    style: subtitle1),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  color: Colors.white,
                  isfilled: true,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }));
                  },
                  color: Colors.white,
                  isfilled: true,
                )
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
