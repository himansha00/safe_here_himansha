import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safehere/features/auth/screens/verify_passports.dart';

import '../../../colors.dart';
import '../../../text_styles.dart';

class verify_2 extends StatelessWidget {
  const verify_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify'),
        backgroundColor: const Color.fromARGB(255, 6, 87, 154),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SvgPicture.asset('assets/svg/Tiick.svg'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 25),
              child: Text(
                "Select a Document to Verify",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 97, 170),
                    fontSize: 23.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text(
                'In orci sed sed est. Nisi platea quam malesuada quis vitae proin praesent neque interdum.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 8, 97, 170),
                  fontSize: 15.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: buttonPassport(context),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: buttonDriversLicense(),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: buttonNationalID(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonPassport(BuildContext context) => ElevatedButton.icon(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return verify_passport();
          }));
        },
        icon: SvgPicture.asset('assets/svg/Globe.svg'),
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 60),
            side: const BorderSide(
              width: 2,
              color: Color.fromARGB(255, 8, 97, 170),
              style: BorderStyle.solid,
            ),
            elevation: 0,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        label: Text(
          'Passport',
          style: buttonwhite,
        ),
      );
  Widget buttonDriversLicense() => ElevatedButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset('assets/svg/Driverslicense.svg'),
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 60),
            side: const BorderSide(
              width: 2,
              color: Color.fromARGB(255, 8, 97, 170),
              style: BorderStyle.solid,
            ),
            elevation: 0,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        label: Text(
          'Drivers License',
          style: buttonwhite,
        ),
      );
  Widget buttonNationalID() => ElevatedButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset('assets/svg/NationalID.svg'),
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 60),
            side: const BorderSide(
              width: 2,
              color: Color.fromARGB(255, 8, 97, 170),
              style: BorderStyle.solid,
            ),
            elevation: 0,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        label: Text(
          'National ID',
          style: buttonwhite,
        ),
      );
}
