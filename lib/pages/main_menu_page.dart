
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:application_project/controller/menu_drawer_controller.dart';
import 'package:application_project/pages/menu_drawer_page.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final controller = Get.put(MainMenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index: controller.selectedIndex.value,
        children: controller.listPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changePage,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: "History"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"),
      ]),
    ));
  }
}
