import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// import '../pages/menu_drawer_page.dart';
import 'package:application_project/pages/menu_drawer_page.dart';
import 'package:application_project/controller/menu_drawer_controller.dart';
import 'package:application_project/pages/main_menu_page.dart';

class LoginController extends GetxController{

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  void login() async{
    if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
        Get.snackbar("Error", "Username dan Password tidak bole kosong");
    }else{
        try{
          isLoading.value = true; // sebagai tanda di page bya muncu widget loading
          final url = Uri.parse("https://mediadwi.com/api/latihan/login");

          final response = await http.post(url, body: {
            "username" : txtUsername.text.toString(),
            "password" : txtPassword.text.toString()
          });

          isLoading.value = false;
          if(response.statusCode == 200){
          //   kita ambil jsonnya messege pindah halaman ke mainmenu
            final data = jsonDecode(response.body);
            if(data["status"] == true){
              Get.snackbar("Berhasil", data['message']);
              Get.put(MainMenuDrawerController());
              Get.off(() => MainMenuPage());
            }else{
              Get.snackbar("Error", data['message']);
            }
          }else{
            Get.snackbar("Error", "Terjadi Kesalahan");
          }
        }catch(e){
          Get.snackbar("gagal", e.toString());
        }
    }
  }

}