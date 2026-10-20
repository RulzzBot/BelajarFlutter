import 'package:application_project/controller/list_product_controller.dart';
import 'package:application_project/pages/detail_product_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';

class ListProductPage extends StatelessWidget {
  final controller = Get.put(ListProductController());
  final produk;
  ListProductPage({super.key, this.produk});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyProducts")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
            () => RefreshIndicator(
              triggerMode: RefreshIndicatorTriggerMode.anywhere,
              edgeOffset: 0,
              backgroundColor: Colors.blue,
              color: Colors.white,
              displacement: 30,
              onRefresh: () async {
                await Future.delayed(Duration(seconds: 1));
              },
                child: ListView.builder(

                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: controller.listProduk.length,
                itemBuilder: (context, index){
                  final produk = controller.listProduk[index];
                  return Dismissible(
                    key: ValueKey(produk.namaProduk),
                    direction: DismissDirection.startToEnd,
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 10),
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),

                    onDismissed: (direction) {
                      controller.listProduk.removeAt(index);
                      Get.snackbar(
                          "Produk Dihapus",
                          "Produk berhasil dihapus"
                      );
                    },
                    child: Card(
                    elevation: 3,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(
                            Routes.detailProduct,
                            arguments: {
                              'namaProduk' : produk.namaProduk.toString(),
                              'harga' : produk.harga.toString(),
                              'deskripsi' : produk.deskripsi.toString(),
                              'image' : produk.image.toString(),
                              'reviews' : produk.reviews.toString(),
                              'rating': produk.rating.toString(),
                              'namaToko' : produk.namaToko.toString()
                            });
                      },
                      child: ListTile(
                        leading: SizedBox(
                          width: 45,
                          height: 45,
                          child: Image.asset(
                            produk.image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(produk.namaProduk),
                        subtitle: Text(produk.harga),
                        trailing: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                  );
                }
            ),
            ),
        ),
      ),
    );
  }
}
