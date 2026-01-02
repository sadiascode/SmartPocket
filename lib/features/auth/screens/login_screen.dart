import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_pocket/common/custom_button.dart';
import 'package:smart_pocket/common/custom_textfield.dart';
import 'package:smart_pocket/features/auth/screens/reset_screen.dart';
import 'package:smart_pocket/features/auth/widgets/custom_google.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.only(left: w * 0.41),
              child: SvgPicture.asset(
                'assets/logo.svg',
                width: w * 0.18,
                height: w * 0.18,
              ),
            ),

        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(left: w * 0.25),
            child : Text("Smart Pocket",style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30
                ),
              ),
            ),
            SizedBox(height: 30),
           CustomTextfield(hintText: 'Username',prefixSvg: "assets/profile.svg"),
            CustomTextfield(hintText: 'Password',prefixSvg: "assets/lock.svg",isPassword: true),

            SizedBox(height: 20),
            CustomButton(text: "LOGIN", onTap: (){}),
            
            SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.only(left: w * 0.32),
           child:  GestureDetector(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResetScreen()),
                );
              },
              child: const Text(
                "FORGOT PASSWORD",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff6B7580),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
        ),
            SizedBox(height: 20),
          Padding(
          padding: EdgeInsets.only(left: w * 0.50),
          child:  Text("OR",style: TextStyle(fontSize: 18,),)
           ),
            SizedBox(height: 10),
            CustomGoogle(text: "CONTINUE WITH GOOGLE",svgPath: "assets/google.svg",onTap: (){},),
            SizedBox(height: 10),
            CustomGoogle(text: "CONTINUE WITH APPLE",svgPath: "assets/apple.svg",onTap: (){},),
            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                  },
                  child: Text(
                    "Register here",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2196F3),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
