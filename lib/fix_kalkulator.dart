import 'package:application_project/component/custom_button.dart';
import 'package:application_project/component/custom_text.dart';
import 'package:application_project/component/custom_txtField.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'controller/kalkulatorController.dart';

class KalkulatorFix extends StatelessWidget {
  KalkulatorFix({super.key});
  final controller = Get.put(Kalkulatorcontroller());
  TextEditingController txtangka1 = TextEditingController();
  TextEditingController txtangka2 = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Kalkulator", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), colorTxt: Colors.black),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: MyTextField(hint: "Angka Pertama", txtController: txtangka1, radius: 20, obscure: false, keyboardType: TextInputType.number, inputFormatters: [FilteringTextInputFormatter.digitsOnly])),
          Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: MyTextField(hint: "Angka Kedua", txtController: txtangka2, radius: 20, obscure: false, keyboardType: TextInputType.number, inputFormatters: [FilteringTextInputFormatter.digitsOnly])),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                child: CustomButton(text: "+", bg: Colors.blue, width: 70, height: 40, clrText: Colors.white, radius: 10, onPressed: (){
                  controller.tambah(
                  double.parse(txtangka1.text.toString()),
                  double.parse(txtangka2.text.toString()),
                  );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                child: CustomButton(text: "-", bg: Colors.blue, width: 70, height: 40, clrText: Colors.white,radius: 10, onPressed: (){
                  controller.kurang(
                    double.parse(txtangka1.text.toString()),
                    double.parse(txtangka2.text.toString()),
                  );
                },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                child: CustomButton(text: "x", bg: Colors.blue, width: 70, height: 40, clrText: Colors.white,radius: 10, onPressed: (){
                  controller.kali(
                    double.parse(txtangka1.text.toString()),
                    double.parse(txtangka2.text.toString()),
                  );

                },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                child: CustomButton(text: "/", bg: Colors.blue, width: 70, height: 40, clrText: Colors.white,radius: 10, onPressed: (){
                  controller.bagi(
                    double.parse(txtangka1.text.toString()),
                    double.parse(txtangka2.text.toString()),
                  );
                },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Obx(() => Text(
                  controller.hasilHitung.value.toString(),
                  style: TextStyle(fontSize: 16),
                )
            ),
          ),
          CustomButton(text: "Reset", bg: Colors.red, width: 250 , height: 50, clrText: Colors.white, radius: 15, onPressed: (){
            txtangka1.text = "";
            txtangka2.text = "";
            controller.hasilHitung.value = 0.0;
          })
        ],
      ),
    );
  }
}
