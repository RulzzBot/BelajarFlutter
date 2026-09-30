import 'package:application_project/component/custom_button.dart';
import 'package:application_project/component/custom_txtField.dart';
import 'package:flutter/cupertino.dart';
import 'package:dropdown_flutter/dropdown_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../routes.dart';

class RegistrationPages extends StatelessWidget {
  const RegistrationPages({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController noHpControl = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    final controller = Get.put(RegistrationController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Regitration"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: MyTextField(hint: "Input Nama", txtController: txtNama, radius: 12, obscure: false, keyboardType: TextInputType.name, inputFormatters: []
              )
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: MyTextField(hint: "Input Alamat", txtController: txtAlamat, radius: 12, obscure: false, keyboardType: TextInputType.streetAddress, inputFormatters: []
              )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: DropdownButtonFormField<String>(
              hint: Text('Select Kelamin'),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              items: const [
                DropdownMenuItem(
                  value: 'Laki-laki',
                  child: Text('Laki-laki'),
                ),
                DropdownMenuItem(
                  value: 'Perempuan',
                  child: Text('Perempuan'),
                ),
              ],
              onChanged: (value) {
                print(value);
                controller.selectedKlmn.value = value ?? '';
              }
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: MyTextField(hint: "No Hp.", txtController: noHpControl, radius: 12, obscure: false, keyboardType: TextInputType.number, inputFormatters: [FilteringTextInputFormatter.digitsOnly]
              )
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: MyTextField(hint: "Email", txtController: txtEmail, radius: 12, obscure: false, keyboardType: TextInputType.text, inputFormatters: []
              )
          ),
          CustomButton(text: "Send", onPressed: (){
            Get.toNamed(Routes.confirmRegistration, arguments: {
              'name' : txtNama.text.toString(),
              'alamat' : txtAlamat.text.toString(),
              'selectedKlmn' : controller.selectedKlmn.value,
              'noHp' : noHpControl.text,
              'email' : txtEmail.text.toString(),
            });
          }, bg: Colors.green , width: 380, height: 40, clrText: Colors.white, radius: 12),

        ]
      ),
    );
  }
}

class RegistrationController extends GetxController{
  var selectedKlmn = ''.obs;
}
