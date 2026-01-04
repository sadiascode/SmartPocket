import 'package:flutter/material.dart';
import 'package:smart_pocket/common/custom_button.dart';
import 'package:smart_pocket/common/custom_textfield.dart';
import 'package:smart_pocket/features/auth/screens/back_screen.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: w * 0.05),
                child:  Text("Create Your New\nPassword",style: TextStyle(fontSize: 38),),
               ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: w * 0.05),
                child:  Text("Your new password must be different \nfrom previous password.",
                  style: TextStyle(
                      fontSize: 18, color: Color(0xff9BA1A8)),
                ),
              ),
              SizedBox(height: 35),
              CustomTextfield(hintText:'Old Password',prefixSvg: "assets/lock.svg",isPassword: true),
              CustomTextfield(hintText:'New Password',prefixSvg: "assets/lock.svg",isPassword: true),
              SizedBox(height: 30),
              CustomButton(text: "RESET PASSWORD", onTap: (){
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BackScreen()),
              );})
            ],
          ),
        ),
      ),
    );
  }
}
