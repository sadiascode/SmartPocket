import 'package:flutter/material.dart';
import 'package:smart_pocket/features/auth/onboarding/onboarding2.dart';
import 'package:smart_pocket/features/auth/widgets/custom_onboarding.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {

  @override
  Widget build(BuildContext context) {
    int currentStep = 1;

    return Scaffold(
      body:
        CustomOnboarding(
          Title: "Simple Money Management",
          Subitle: "Get notifications or alerts \nwhen you overspend",
          Svg: "assets/rich.svg",
          currentStep: currentStep,
          onNext: () {
            {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Onboarding2()),
              );
            }
          },
        ),
      );
    }
}
