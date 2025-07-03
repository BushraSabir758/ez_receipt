
import 'package:ez_receipt/presentation/mainMenuScreens/addExpenseScreen/add_expense_screen.dart';
import 'package:ez_receipt/utils/app_colors.dart';
import 'package:ez_receipt/utils/device_size.dart';
import 'package:ez_receipt/utils/device_size_manager.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
                SizedBox(height:80.v,),
                Text("Welcome John Peter!",
                  style: TextStyle(fontSize: 18.fSize,fontWeight: FontWeight.w600, color: whiteColor),
                ),
                SizedBox(height: 5.v,),
                Text("Complete your tasks with ease",
                  style: TextStyle(fontSize: 12.fSize,fontWeight: FontWeight.w400, color: whiteColor)
                ),
                SizedBox(
                  height:140.v,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(20.adaptSize),
                      child: InkWell(
                        splashColor: Colors.white.withOpacity(0.3), // white ripple effect
                        highlightColor: Colors.white.withOpacity(0.1), 
                        borderRadius: BorderRadius.circular(20.adaptSize),       
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddExpenseScreen()));
                        },
                        child: Container(
                          height: 150.v,
                          width: 150.h,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            // color: greenColor,
                            borderRadius: BorderRadius.circular(20.adaptSize)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IntrinsicWidth(
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: const BoxDecoration(
                                    color: whiteColor,
                                    shape: BoxShape.circle
                                  ),
                                  child: const Center(child: Icon(Icons.add_task_rounded, color: greenColor,),),
                                ),
                              ),
                              SizedBox(height: 20.v,),
                              Flexible(
                                child: Text("Enter Expense",
                                  style: TextStyle(fontSize: 14.fSize,fontWeight: FontWeight.w500, color: whiteColor)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(20.adaptSize),
                      child: InkWell(
                        splashColor: Colors.white.withOpacity(0.3), // white ripple effect
                        highlightColor: Colors.white.withOpacity(0.1), 
                        borderRadius: BorderRadius.circular(20.adaptSize),       
                        onTap: () {
                          print("snap a receipt");
                        },
                        child: Container(
                          height: 150.v,
                          width: 150.h,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            // color: greenColor,
                            borderRadius: BorderRadius.circular(20.adaptSize)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IntrinsicWidth(
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: const BoxDecoration(
                                    color: whiteColor,
                                    shape: BoxShape.circle
                                  ),
                                  child: const Center(child: Icon(Icons.add_task_rounded, color: greenColor,),),
                                ),
                              ),
                              SizedBox(height: 20.v,),
                              Flexible(
                                child: Text("Snap a receipt",
                                  style: TextStyle(fontSize: 14.fSize,fontWeight: FontWeight.w500, color: whiteColor)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.v,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(20.adaptSize),
                      child: InkWell(
                        splashColor: Colors.white.withOpacity(0.3), // white ripple effect
                        highlightColor: Colors.white.withOpacity(0.1), 
                        borderRadius: BorderRadius.circular(20.adaptSize),       
                        onTap: () {
                          print("run receipt");
                        },
                        child: Container(
                          height: 150.v,
                          width: 150.h,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            // color: greenColor,
                            borderRadius: BorderRadius.circular(20.adaptSize)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IntrinsicWidth(
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: const BoxDecoration(
                                    color: whiteColor,
                                    shape: BoxShape.circle
                                  ),
                                  child: const Center(child: Icon(Icons.add_task_rounded, color: greenColor,),),
                                ),
                              ),
                              SizedBox(height: 20.v,),
                              Flexible(
                                child: Text("Run report",
                                  style: TextStyle(fontSize: 14.fSize,fontWeight: FontWeight.w500, color: whiteColor)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(20.adaptSize),
                      child: InkWell(
                        splashColor: Colors.white.withOpacity(0.3), // white ripple effect
                        highlightColor: Colors.white.withOpacity(0.1), 
                        borderRadius: BorderRadius.circular(20.adaptSize),       
                        onTap: () {
                          print("admin board");
                        },
                        child: Container(
                          height: 150.v,
                          width: 150.h,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            // color: greenColor,
                            borderRadius: BorderRadius.circular(20.adaptSize)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IntrinsicWidth(
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: const BoxDecoration(
                                    color: whiteColor,
                                    shape: BoxShape.circle
                                  ),
                                  child: const Center(child: Icon(Icons.add_task_rounded, color: greenColor,),),
                                ),
                              ),
                              SizedBox(height: 20.v,),
                              Flexible(
                                child: Text("Admin board",
                                  style: TextStyle(fontSize: 14.fSize,fontWeight: FontWeight.w500, color: whiteColor)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}