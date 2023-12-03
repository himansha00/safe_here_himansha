import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safehere/features/auth/national_id.dart';
import 'package:safehere/features/auth/screens/drivers_license.dart';
import 'package:safehere/features/auth/screens/verify_passports.dart';

import '../../../colors.dart';
import '../../../text_styles.dart';

class realTimeSelfie extends StatefulWidget {
  @override
  State<realTimeSelfie> createState() => _rtsState();
}

class _rtsState extends State<realTimeSelfie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture'),
        backgroundColor: const Color.fromARGB(255, 6, 87, 154),
      ),
      backgroundColor: Colors.white,
    );
  }
}
