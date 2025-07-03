import 'package:ez_receipt/core/asset_paths.dart';
import 'package:ez_receipt/presentation/authScreens/loginScreen/login_screen.dart';
import 'package:ez_receipt/presentation/authScreens/signUpScreen/signup_screen.dart';
import 'package:ez_receipt/utils/app_colors.dart';
import 'package:ez_receipt/utils/custom_text_button.dart';
import 'package:ez_receipt/utils/device_size.dart';
import 'package:ez_receipt/utils/device_size_manager.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Container(
          height: deviceHeight(context),
          width: deviceWidth(context),
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blackColor,Color.fromARGB(255, 39, 38, 38)]
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.v,
                ),
                Container(
                  padding: EdgeInsets.symmetric( horizontal: 12.h, vertical: 40.v),
                  decoration: BoxDecoration(
                    color: whiteColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(12.adaptSize)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 70.v,
                        width: 70.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(ImagesPath.welcomeImagePath),fit: BoxFit.fill)
                        ),
                        
                      ),
                      SizedBox(height: 10.v,),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Welcome",
                        style: TextStyle(fontSize: 42.fSize,fontWeight: FontWeight.w500, color: whiteColor),textAlign: TextAlign.center,
                                    ),
                      ),
                      SizedBox(height: 5.v,),
                      Align(
                        alignment: Alignment.center,
                        child: Text("to",
                          style: TextStyle(fontSize: 18.fSize,fontWeight: FontWeight.w600, color: whiteColor),textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 5.v,),
                      Align(
                        alignment: Alignment.center,
                        child: Text("EZ RECEIPTS",
                          style: TextStyle(fontSize: 22.fSize,fontWeight: FontWeight.w600, color: whiteColor),textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.v,
                ),

                CustomTextButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  },
                ),
                SizedBox(
                  height: 30.v,
                ),

                CustomTextButton(
                  text: "Sign Up",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignupScreen()));
                  },
                ),
                SizedBox(
                  height: 30.v,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}