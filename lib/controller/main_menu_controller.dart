import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:application_project/menu/history.dart';
import 'package:application_project/menu/home.dart';
import 'package:application_project/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> listPages = [
    Home(),
    History(),
    Profile(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}