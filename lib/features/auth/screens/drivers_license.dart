import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class drivers_license extends StatefulWidget {
  @override
  State<drivers_license> createState() => _drivers_licenseState();
}

// ignore: camel_case_types
class _drivers_licenseState extends State<drivers_license> {
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
      body: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Theme(
            data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
              primary: Colors.red,
            )),
            //child: Theme(
            //data: Theme.of(context).copyWith(
            //colorScheme: const ColorScheme.light(primary: Colors.yellow)),
            // comment
            child: Stepper(
              controlsBuilder: (context, details) {
                return Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: details.onStepContinue,
                          child: Text('Upload'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      if (currentStep != 0)
                        Expanded(
                          child: ElevatedButton(
                            onPressed: details.onStepCancel,
                            child: Text('Cancel'),
                          ),
                        ),
                    ],
                  ),
                );
              },
              type: StepperType.horizontal,
              steps: getSteps(),
              currentStep: currentStep,
              elevation: 0,
              onStepContinue: (() {
                final isLastStep = currentStep == getSteps().length - 1;
                if (isLastStep) {
                  // ignore: avoid_print
                  print("Steps Completed");
                } else {
                  setState(() => currentStep += 1);
                }
              }),
              onStepTapped: (Step) => setState(() => currentStep = Step),
              onStepCancel: currentStep == 0
                  ? null
                  : () => setState(() => currentStep -= 1),
            ),
            //),
          )
          //buttonNationalIDyellow(),
          ),
    );
  }

  List<Step> getSteps() => [
        Step(
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 0,
            title: Text(' Step 1'),
            content: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  const Text('Upload Your Drivers License',
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 97, 170),
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Front side',
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 97, 170),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //SvgPicture.asset('assets/svg/ID_Card.svg', ),
                  Image.asset('assets/svg/ID_Cardpng.png'),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Upload the Front page of your Driverse License',
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 97, 170),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: const Text('Step 2'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('Upload Your Driverse License',
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 97, 170),
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Back Side',
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 97, 170),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //SvgPicture.asset('assets/svg/ID_Card.svg', ),
                  Image.asset('assets/svg/ID_Cardpng.png'),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Upload the Back side of your Driverse License ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 97, 170),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )),
        Step(
            isActive: currentStep >= 2,
            title: const Text('Step 3'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('Upload a Real time selfie',
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 97, 170),
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Show your face',
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 97, 170),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //SvgPicture.asset('assets/svg/ID_Card.svg', ),
                  Image.asset('assets/svg/Facedetection.png'),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Capture a selfie portrait photo of yourself. Please make sure to capture a photo with good lightning and not blurry',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 97, 170),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )),
      ];
  Widget buttonNationalIDyellow() => ElevatedButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset('assets/svg/NationalID.svg'),
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 60),
            side: const BorderSide(
              width: 2,
              color: Colors.yellow,
              style: BorderStyle.solid,
            ),
            elevation: 0,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        label: const Text(
          'National ID',
        ),
      );
  //void setState(int Function() param0) {}
}
