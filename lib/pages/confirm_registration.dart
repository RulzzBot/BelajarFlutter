import 'package:application_project/component/custom_button.dart';
import 'package:application_project/component/custom_text.dart';
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
        title: const Text("Confirm Registration"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Nama",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    colorTxt: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  CustomText(
                    text: controller.nama,
                    style: const TextStyle(fontSize: 16),
                    colorTxt: Colors.black,
                  ),

                  const SizedBox(height: 15),

                  CustomText(
                    text: "Alamat",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    colorTxt: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  CustomText(
                    text: controller.alamat,
                    style: const TextStyle(fontSize: 16),
                    colorTxt: Colors.black,
                  ),

                  const SizedBox(height: 15),

                  CustomText(
                    text: "Jenis Kelamin",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    colorTxt: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  CustomText(
                    text: controller.selectedKlmn.value,
                    style: const TextStyle(fontSize: 16),
                    colorTxt: Colors.black,
                  ),

                  const SizedBox(height: 15),

                  CustomText(
                    text: "No HP",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    colorTxt: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  CustomText(
                    text: controller.noHp,
                    style: const TextStyle(fontSize: 16),
                    colorTxt: Colors.black,
                  ),

                  const SizedBox(height: 15),

                  CustomText(
                    text: "Email",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    colorTxt: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  CustomText(
                    text: controller.email,
                    style: const TextStyle(fontSize: 16),
                    colorTxt: Colors.black,
                  ),
                ],
              ),
            ),

            const Spacer(),

            CustomButton(
              text: "Oke",
              onPressed: () {
                Get.back();
              },
              bg: Colors.red,
              width: 100,
              height: 40,
              clrText: Colors.white,
              radius: 10,
            ),
          ],
        ),
      ),
    );
  }
}