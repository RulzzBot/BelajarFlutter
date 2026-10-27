import 'package:application_project/controller/list_product_controller.dart';
import 'package:application_project/pages/detail_product_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../routes.dart';
class Home extends StatelessWidget {
  final controller = Get.put(ListProductController());
  final produk;
  Home({super.key, this.produk});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Obx(
          ()=> RefreshIndicator(
              triggerMode: RefreshIndicatorTriggerMode.anywhere,
              edgeOffset: 0,
              backgroundColor: Colors.blue,
              color: Colors.white,
              displacement: 30,
              onRefresh: controller.refreshProduk,
              // Vertikal List
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  const Padding(
                      padding: EdgeInsets.all(10),
                    child: Text(
                      'Produk Terkini',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      height: 250,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.produkList.length,
                          itemBuilder: (context, index){
                            final produk = controller.produkList[index];
                            return SizedBox(
                                width: 200,
                                child: GestureDetector(
                                  onLongPressStart: (details) async {
                                    final posisi = details.globalPosition;
                                    final size = MediaQuery.of(context).size;
                                    final pilihan = await showMenu(
                                        context: context,
                                        position: RelativeRect.fromLTRB(
                                          posisi.dx,
                                          posisi.dy,
                                          size.width - posisi.dx,
                                          size.height - posisi.dy,
                                        ),
                                        items:const[
                                          PopupMenuItem(
                                              value: 'detail',
                                              child: Text('Detail Produk')
                                          ),
                                          PopupMenuItem(
                                              value: 'delete',
                                              child: Text('Delete Produk'))
                                        ] );
                                    switch(pilihan){
                                      case 'detail':
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
                                            }
                                        );
                                        break;
                                      case 'delete':
                                        controller.produkList.removeAt(index);
                                        Get.snackbar(
                                            "Produk Dihapus",
                                            "Produk berhasil dihapus"
                                        );
                                        break;
                                    }

                                  },
                                child: Card(
                                  elevation: 3,
                                  margin: EdgeInsets.all(8),
                                  child: InkWell(
                                    onTap: (){
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
                                          }
                                      );
                                    },
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            produk.image,
                                            height: 150,
                                            width: double.infinity,
                                            fit: BoxFit.contain,
                                          ),
                                          const SizedBox(height: 10),
                                          Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    produk.namaProduk,
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    'Rp. ${produk.harga}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              )
                                          )
                                        ]
                                    ),
                                  ),
                                )
                                )
                            );
                          }
                      )
                    ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Semua Produk',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Horizontal List
                  ListView.builder(
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.produkList.length,
                      itemBuilder: (context, index){
                        final produk = controller.produkList[index];
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
                            onDismissed: (direction){
                              controller.produkList.removeAt(index);
                              Get.snackbar(
                                  "Produk Dihapus",
                                  "Produk berhasil dihapus"
                              );
                            },
                            child: Card(
                              elevation: 3,
                              margin: EdgeInsets.all(8),
                              child: InkWell(
                                  onTap: (){
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
                                        }
                                    );
                                  },
                                  child: GestureDetector(
                                      onLongPressStart: (details) async{
                                        final posisi = details.globalPosition;
                                        final size = MediaQuery.of(context).size;
                                        final pilihan = await showMenu(
                                            context: context,
                                            position: RelativeRect.fromLTRB(
                                              posisi.dx,
                                              posisi.dy,
                                              size.width - posisi.dx,
                                              size.height - posisi.dy,
                                            ),
                                            items:const[
                                              PopupMenuItem(
                                                  value: 'detail',
                                                  child: Text('Detail Produk')
                                              ),
                                              PopupMenuItem(
                                                  value: 'delete',
                                                  child: Text('Delete Produk'))
                                            ] );
                                        switch(pilihan){
                                          case 'detail':
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
                                                }
                                            );
                                            break;
                                          case 'delete':
                                            controller.produkList.removeAt(index);
                                            Get.snackbar(
                                                "Produk Dihapus",
                                                "Produk berhasil dihapus"
                                            );
                                            break;
                                        }
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
                                        trailing: const Icon(Icons.arrow_forward_ios),
                                      )
                                  )
                              ),
                            ),
                        );
                      }
                    )
                  ],
                ),
              )
          )
    );
  }
}
