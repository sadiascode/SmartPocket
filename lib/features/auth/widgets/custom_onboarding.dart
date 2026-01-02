import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_pocket/common/custom_button.dart';

class CustomOnboarding extends StatelessWidget {
  final String Title;
  final String Subitle;
  final String Svg;
  final int currentStep;
  final VoidCallback onNext;

  const CustomOnboarding({
    super.key,
    required this.Title,
    required this.Subitle,
    required this.Svg,
    required this.currentStep,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: h * 0.08),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/logo.svg',
                    width: w * 0.11,
                    height: w * 0.11,
                  ),
                  SizedBox(width: w * 0.03),
                  Text(
                    "Smart Pocket",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.06,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              SvgPicture.asset(
                Svg,
                width: w * 0.90,
                height: w * 0.90,
              ),
              SizedBox(height: 25),
              Text(
                Title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 9),
              Text(Subitle, style: TextStyle(fontSize: 16)),
              SizedBox(height: 30),

              // 3-step progress indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: currentStep == index ? 20 : 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: currentStep == index ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.circular(6),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),

              CustomButton(text: "LET'S GO", onTap: onNext),
            ],
          ),
        ),
      ),
    );
  }
}
