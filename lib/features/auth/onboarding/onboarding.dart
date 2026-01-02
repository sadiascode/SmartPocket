import 'package:flutter/material.dart';
import 'package:smart_pocket/features/auth/onboarding/onboarding1.dart';
import 'package:smart_pocket/features/auth/widgets/custom_onboarding.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  @override
  Widget build(BuildContext context) {
    int currentStep = 0;

    return Scaffold(
      body: CustomOnboarding(
          Title: "Note Down Expenses",
          Subitle: "Daily note your expenses to \nhelp manage money",
          Svg: "assets/money.svg",
          currentStep: currentStep,
          onNext: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Onboarding1()),
            );
          }
          )
    );
  }
}
