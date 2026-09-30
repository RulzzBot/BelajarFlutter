import 'package:application_project/component/custom_button.dart';
import 'package:application_project/component/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/confirm_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Registration"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(12, 10, 0, 10),
              child: CustomText(text: "Nama " + controller.nama, style: TextStyle(fontSize: 16), colorTxt: Colors.green)
          ),
          CustomButton(text: "oke", onPressed: (){Get.back();}, bg: Colors.red, width: 70, height: 30, clrText: Colors.white, radius: 10)
        ],
      ),
    );
  }
}
