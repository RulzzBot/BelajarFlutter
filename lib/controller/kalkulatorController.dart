import 'package:get/get.dart';

class Kalkulatorcontroller extends GetxController{
  var hasilHitung = 0.0.obs;

  void tambah(double angka1, double angka2){
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar("hasil jumlah", "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilTambah = angka1 - angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar("hasil Kurang", "${hasilTambah.toString()}",
        snackPosition: SnackPosition.BOTTOM
    );
  }

  void kali(double angka1, double angka2) {
    double hasilTambah = angka1 * angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar("hasil Kali", "${hasilTambah.toString()}",
        snackPosition: SnackPosition.BOTTOM
    );
  }

  void bagi(double angka1, double angka2) {
    double hasilTambah = angka1 / angka2;
    if(angka2 == 0){
      Get.snackbar("Error", "Tidak bisa membagi dengan nol",
          snackPosition: SnackPosition.BOTTOM
      );
      return;
    }
    hasilHitung.value = hasilTambah;
    Get.snackbar("hasil Bagi", "${hasilTambah.toString()}",
        snackPosition: SnackPosition.BOTTOM
    );
  }

}