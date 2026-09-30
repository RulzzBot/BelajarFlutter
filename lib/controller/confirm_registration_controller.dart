import 'dart:ffi';

import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController{
  late String nama;
  late String alamat;
  late String noHp;
  late String email;
  var selectedKlmn = ''.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments; // Menangkap data dari tampilan sebelumnya
    nama = arguments['name'];
    alamat = arguments['alamat'];
    selectedKlmn.value = arguments['selectedKlmn'];
    noHp = arguments['noHp'];
    email = arguments['email'];
  }
  }
