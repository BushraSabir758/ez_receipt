
import 'package:ez_receipt/presentation/authScreens/welcomeScreen/welcome_screen.dart';
import 'package:ez_receipt/utils/app_colors.dart';
import 'package:ez_receipt/utils/device_size_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: {
                TargetPlatform.android : CupertinoPageTransitionsBuilder(),
              }
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: greenColor),
            useMaterial3: true,
            fontFamily: "Poppins"
          ),
          home: const WelcomeScreen(),
        );
      },
    );
  }
}


