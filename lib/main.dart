import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/theme.dart';
import 'package:project_1/view/splash_screen.dart';

  void main()=> runApp(Project());

  class Project extends StatelessWidget{
    
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }

  }
  