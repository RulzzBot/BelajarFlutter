
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_movie_controller.dart';
import '../routes.dart';

class ListMoviePage extends StatelessWidget {
  const ListMoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListMovieController());
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Film")),
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
              await controller.fetchMovie();
            },
            child: ListView.builder(

                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: controller.movieList.length,
                itemBuilder: (context, index){
                  final movie = controller.movieList[index];
                  return Dismissible(
                    key: ValueKey(movie.id),
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
                      controller.movieList.removeAt(index);
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
                              'title': movie.title.toString(),
                              'voteAverage': movie.voteAverage.toString(),
                              'overview': movie.overview.toString(),
                              'posterPath': movie.posterPath.toString(),
                              'releaseDate': movie.releaseDate.toString(),
                              'voteCount': movie.voteCount.toString(),
                            },
                          );
                        },
                        onLongPress: () async {
                          final pilihan = await showMenu(
                              context: context,
                              position: RelativeRect.fromLTRB(200, 200, 0, 0),
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
                                    'title': movie.title.toString(),
                                    'voteAverage': movie.voteAverage.toString(),
                                    'overview': movie.overview.toString(),
                                    'posterPath': movie.posterPath.toString(),
                                    'releaseDate': movie.releaseDate.toString(),
                                    'voteCount': movie.voteCount.toString(),
                                  }
                              );
                              break;
                            case 'delete':
                              controller.movieList.removeAt(index);
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
                            child: movie.posterPath.isNotEmpty ? Image.network(
                              "https://image.tmdb.org/t/p/w500${movie.posterPath}",
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.error);
                              },
                            ) : const Icon(Icons.movie),
                          ),
                          title: Text(movie.title),
                          subtitle: Text(movie.voteAverage.toString()),
                          trailing: const Icon(Icons.arrow_forward_ios),
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
