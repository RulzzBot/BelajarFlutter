import 'package:flutter/material.dart';

import '../pages/menu_drawer_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: AppBar(
        title: const Text("My Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: MenuDrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: const CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage("images/logoSpo.webp"),
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Nazrul Abidin",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("@yutazzbot",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
                width: 160,
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: const Icon(Icons.edit_outlined, size: 18),
                  label: const Text("Edit Profile"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )
            ),
            const SizedBox(height: 22),
            Divider(
              color: Colors.grey,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 24),
            // Suppprt menu
            _buildMenuSection(title: "Account", children: [
              _buildMenuItem(
                icon: Icons.settings_outlined,
                title: "Settings",
                onTap: (){},
              ),
              _buildMenuItem(
                icon: Icons.shopping_bag_outlined,
                title: "My Orders",
                onTap: (){},
              ),
              _buildMenuItem(
                icon: Icons.location_on_outlined,
                title: "Address",
                onTap: (){},
              ),
              _buildMenuItem(
                icon: Icons.lock_outline,
                title: "Change Password",
                onTap: () {},
              ),
            ]),
            const SizedBox(height: 16),
            _buildMenuSection(title: "Support", children: [
              _buildMenuItem(
                icon: Icons.help_outline,
                title: "Help & Support",
                onTap: (){},
              ),
              _buildMenuItem(
                icon: Icons.logout_outlined,
                title: "Log Out",
                onTap: (){},
              ),
            ]),
            const SizedBox(height: 16),
          ],
        ),
      )
    );
  }

    // Reusuable Widget

    Widget _buildMenuSection({
      required String title,
      required List<Widget> children,
      }) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            ...children
          ])
      );
    }
    Widget _buildMenuItem({
      required IconData icon,
      required String title,
      required Function() onTap,
      Color iconColor = Colors.black87,
      Color textColor = Colors.black87,
    }) {
      return ListTile(
        onTap: onTap,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(
          icon,
          color: iconColor,
          size: 23,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 16,
        ),
      );
    }
}

