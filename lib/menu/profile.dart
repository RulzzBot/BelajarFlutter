import 'package:flutter/material.dart';

import '../pages/menu_drawer_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile",),
      ),
      drawer: MenuDrawerPage(),
      body: Column(

        children: [
          const SizedBox(height: 10),
          Center(
            child: const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/logoSpo.webp"),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Nazrull Wijayaa",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
