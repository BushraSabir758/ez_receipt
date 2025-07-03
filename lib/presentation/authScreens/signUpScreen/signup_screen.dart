
import 'package:ez_receipt/presentation/authScreens/loginScreen/login_screen.dart';
import 'package:ez_receipt/utils/app_colors.dart';
import 'package:ez_receipt/utils/custom_text_button.dart';
import 'package:ez_receipt/utils/custom_text_field.dart';
import 'package:ez_receipt/utils/device_size.dart';
import 'package:ez_receipt/utils/device_size_manager.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Container(
          height: deviceHeight(context),
          width: deviceWidth(context),
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blackColor,Color.fromARGB(255, 39, 38, 38)]
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.v,),
                Container(
                  height: 100.v,
                  width: 100.h,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(20.adaptSize)
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 12.v,
                          width: 12.h,
                          decoration: const BoxDecoration(
                            color: whiteColor,
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      Container(
                        height: 45.v,
                        width: 45.h,
                        decoration: BoxDecoration(
                          color: greenColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: whiteColor,
                            width: 6
                          )
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.v,),
                Text("Welcome",
                  style: TextStyle(fontSize: 26.fSize,fontWeight: FontWeight.w600, color: whiteColor),
                ),
                Text("You're almost there",
                  style: TextStyle(fontSize: 18.fSize,fontWeight: FontWeight.w500, color: whiteColor)
                ),
                SizedBox(
                  height: 30.v,
                ),
                const CustomTextField(
                  hintText: "First name",
                ),
                SizedBox(height: 20.v,),
                const CustomTextField(
                  hintText: "Last name",
                ),
                SizedBox(height: 20.v,),
                const CustomTextField(
                  hintText: "Company",
                ),
                SizedBox(height: 20.v,),
                const CustomTextField(
                  hintText: "Email",
                ),
                SizedBox(height: 20.v,),
                const CustomTextField(
                  hintText: "Phone",
                ),
                SizedBox(
                  height: 80.v,
                ),
                CustomTextButton(
                  text: "Sign up",
                  onPressed: () {
                    print("sign up");
                  },
                ),
                SizedBox(
                  height: 20.v,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text("Already have an account?",
                        style: TextStyle(fontSize: 12.fSize,fontWeight: FontWeight.w500, color: whiteColor)
                      ),
                    ),
                    SizedBox(width: 20.h,),
                    Material(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(20.adaptSize),
                      child: InkWell(
                        splashColor: Colors.white.withOpacity(0.3), // white ripple effect
                        highlightColor: Colors.white.withOpacity(0.1), 
                        borderRadius: BorderRadius.circular(20.adaptSize), 
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginScreen()));
                        },
                        child: Container(
                          // height: 45.v,
                          width: 100.h,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            // color: greenColor,
                            borderRadius: BorderRadius.circular(12.adaptSize)
                          ),
                          child: const Center(child: Text("Login",style: TextStyle(color: whiteColor),)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.v,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}