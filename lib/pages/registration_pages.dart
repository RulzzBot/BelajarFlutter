import 'package:application_project/component/custom_button.dart';
import 'package:application_project/component/custom_txtField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';

class RegistrationPages extends StatelessWidget {
  const RegistrationPages({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Regitration"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: MyTextField(hint: "Input Nama", txtController: txtNama, radius: 12, obscure: false, keyboardType: TextInputType.name, inputFormatters: [])),
          CustomButton(text: "Send", onPressed: (){
            Get.toNamed(Routes.confirmRegistration, arguments: {
              'name' : txtNama.text.toString(),
            });
          }, bg: Colors.green , width: 380, height: 40, clrText: Colors.white, radius: 12)
        ]
      ),
    );
  }
}
