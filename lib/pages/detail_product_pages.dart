
import 'package:application_project/controller/list_product_controller.dart';
import 'package:application_project/models/product_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class DetailProductPages extends StatelessWidget {
  const DetailProductPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final produk = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Gambar
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Image.asset(
                produk["image"],
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 20),

            // Nama produk
            Text(
              produk["namaProduk"],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Rating
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  produk["rating"],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "${produk["reviews"]} Reviews",
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // Harga
            Text(
              produk["harga"],
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Toko
            Row(
              children: [
                const Icon(Icons.store),
                const SizedBox(width: 8),
                Text(
                  produk["namaToko"],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Deskripsi
            const Text(
              "Deskripsi",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              produk["deskripsi"],
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 30),

            // Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,

                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(12),
                    )
                  ),
                child: const Text(
                  "Beli Sekarang",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}