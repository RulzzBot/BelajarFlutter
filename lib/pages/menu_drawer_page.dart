
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_project/controller/menu_drawer_controller.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final controller = Get.find<MainMenuDrawerController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header profil
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('images/logoSpo.webp'),
            ),
            accountName: const Text(
              'Nazrull Wijayaa',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: const Text(
              'nazrulwijaya0@gmail.com',
            ),
          ),

          // Menu Home
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              controller.changePage(0);
              Navigator.pop(context);
            },
          ),

          // Menu History
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('History'),
            onTap: () {
              controller.changePage(1);
              Navigator.pop(context);
            },
          ),

          // Menu Profile
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              controller.changePage(2);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
