import 'package:application_project/models/product_models.dart';
import 'package:get/get.dart';

class ListProductController extends GetxController{

  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "Samsung Galaxy Fold",
      harga: "10 juta",
      deskripsi: "Smartphone lipat premium dengan layar luas dan performa tinggi.",
      image: "images/samsung.webp",
      reviews: "1.2K",
      rating: "4.8",
      namaToko: "Samsung Official Store",
    ),

    ProdukModel(
      namaProduk: "Iphone 100",
      harga: "35 juta",
      deskripsi: "Smartphone flagship dengan kamera canggih dan performa yang powerful.",
      image: "images/iphone.webp",
      reviews: "2.5K",
      rating: "4.9",
      namaToko: "Apple Official Store",
    ),

    ProdukModel(
      namaProduk: "Laptop ROG",
      harga: "50 juta",
      deskripsi: "Laptop gaming berperforma tinggi untuk gaming dan kebutuhan profesional.",
      image: "/images/rogboskuh.jpg",
      reviews: "856",
      rating: "4.8",
      namaToko: "ASUS ROG Official Store",
    ),

    ProdukModel(
      namaProduk: "PS5",
      harga: "7 juta",
      deskripsi: "Konsol game generasi terbaru dengan grafis berkualitas tinggi dan loading cepat.",
      image: "images/ps5.jpg",
      reviews: "3.1K",
      rating: "4.9",
      namaToko: "Sony Official Store",
    ),

    ProdukModel(
      namaProduk: "Smart TV Android",
      harga: "10 juta",
      deskripsi: "Smart TV dengan sistem Android, layar berkualitas tinggi, dan berbagai aplikasi hiburan.",
      image: "images/smarttv.jpg",
      reviews: "745",
      rating: "4.7",
      namaToko: "Electronic Store",
    ),
  ];



}