

import 'package:get/get.dart';

class DetailProductController extends GetxController{
  late String namaProduk;
  late String harga;
  late String deskripsi;
  late String image;
  late String reviews;
  late String rating;
  late String namaToko;

  @override
  void onInit(){
    super.onInit();

    final arguments = Get.arguments;
    namaProduk = arguments['namaProduk'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    image = arguments['image'];
    reviews = arguments['reviews'];
    rating = arguments['rating'];
    namaToko = arguments['namaToko'];
  }
}