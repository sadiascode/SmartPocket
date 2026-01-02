import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_pocket/common/custom_button.dart';
import 'package:smart_pocket/features/auth/screens/login_screen.dart';

class BackScreen extends StatefulWidget {
  const BackScreen({super.key});

  @override
  State<BackScreen> createState() => _BackScreenState();
}

class _BackScreenState extends State<BackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black , size: 18),
          ),
        ),
      backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SvgPicture.asset(
                    "assets/content.svg",
                    width: 400,
                    height: 400,
                   ),
                      SizedBox(height: 70),
                      CustomButton(text: "Back", onTap: (){
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>  LoginScreen()),
                      );})
                  ]
                )
              )
            )
          )
     );
  }
}
