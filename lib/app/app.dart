import 'package:flutter/material.dart';
import 'package:smart_pocket/features/auth/onboarding/onboarding.dart';

class SmartPocket extends StatelessWidget {
  const SmartPocket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Top Talent Agency",
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
