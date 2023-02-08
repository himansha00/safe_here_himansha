//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:safehere/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safehere/text_styles.dart';
import 'package:safehere/widgets/custom_button.dart';
import 'package:safehere/features/auth/screens/verify_2.dart';
import 'package:path/path.dart';

// ignore: camel_case_types
class verify extends StatelessWidget {
  const verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify Your Identity'),
        backgroundColor: const Color.fromARGB(255, 6, 87, 154),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: SvgPicture.asset('assets/svg/Vector.svg'),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text("We need to Verify your ID",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 97, 170),
                    fontSize: 23.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Text(
                "A secured chat application with ID verification is a messaging platform that ensures the identity of its users through a verification process. This type of chat app prioritizes privacy and security, allowing users to communicate confidentially with peace of mind that the person they are speaking to is who they claim to be. Features like end-to-end encryption, secure server infrastructure, and strict access controls help to further enhance the security of the chat. With an ID verification system in place, this type of chat application is ideal for sensitive communication needs, such as business or legal discussions. ",
                textAlign: TextAlign.justify,
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
            //   child: CustomButton(
            //       text: 'Continue',
            //       onPressed: () {
            //         Navigator.of(context)
            //             .push(MaterialPageRoute(builder: (context) {
            //           return verify_2();
            //         }));
            //       },
            //       isfilled: true,
            //       color: const Color.fromARGB(255, 8, 89, 156)),
            // ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: buttonBlue(context),
            )
          ],
        ),
      ),
    );
    // ignore: todo
    // TODO: implement build
  }

  Widget buttonBlue(BuildContext context) => ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return verify_2();
          }));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 60),
            elevation: 0,
            primary: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          'Continue',
          style: buttonblue,
        ),
      );
}
