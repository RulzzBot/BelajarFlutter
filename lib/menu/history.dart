import 'package:flutter/material.dart';

import '../pages/menu_drawer_page.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
      ),
      drawer: MenuDrawerPage(),
    );
  }
}
