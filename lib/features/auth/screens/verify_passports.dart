import 'package:flutter/material.dart';

class verify_passport extends StatefulWidget {
  @override
  State<verify_passport> createState() => _verify_passportState();
}

class _verify_passportState extends State<verify_passport> {
  //const verify_passport({Key? key}) : super(key: key)
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify'),
        backgroundColor: const Color.fromARGB(255, 6, 87, 154),
      ),
      backgroundColor: Colors.white,
      body: Stepper(
        type: StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
        onStepContinue: (() {
          setState(() => currentStep += 1);
        }),
        onStepCancel: (() => setState(() => currentStep -= 1)),
      ),
    );
    throw UnimplementedError();
  }

  List<Step> getSteps() => [
        Step(
            isActive: currentStep >= 0,
            title: Text(' Step 1'),
            content: Container()),
        Step(
            isActive: currentStep >= 1,
            title: Text('Step 2'),
            content: Container()),
        Step(
            isActive: currentStep >= 2,
            title: Text('Step 3'),
            content: Container())
      ];

  //void setState(int Function() param0) {}
}
