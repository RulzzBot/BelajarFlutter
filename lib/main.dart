import 'package:application_project/fix_kalkulator.dart';
import 'package:flutter/material.dart';
import 'package:application_project/login_page.dart';
import 'package:application_project/kalkulator_page.dart';
import 'package:application_project/login_clone.dart';
import 'package:application_project/pages/login_clone_fix.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: KalkulatorFix(),
    );
  }
}


