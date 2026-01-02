import 'package:flutter/material.dart';
import 'package:smart_pocket/features/auth/screens/login_screen.dart';
import 'package:smart_pocket/features/auth/widgets/custom_onboarding.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {

  @override
  Widget build(BuildContext context) {
    int currentStep = 2;

    return Scaffold(
      body:
      CustomOnboarding(
        Title: "Easy to Track and Analize",
        Subitle: "Tracking your expense help make sure \nyou don't overspend",
        Svg: "assets/lead.svg",
        currentStep: currentStep,
        onNext: () {
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          }
        },
      ),
    );
  }
}
