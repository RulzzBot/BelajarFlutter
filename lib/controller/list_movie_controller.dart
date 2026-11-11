import 'package:application_project/models/movie_models.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListMovieController extends GetxController{
  var isLoading = false.obs;
  var movieList = <Result>[].obs;

  @override
  void onInit(){
    super.onInit();
    fetchMovie();
  }

  Future<void> fetchMovie() async{
    try {
      isLoading.value = true;
      final url = Uri.parse(
        "https://api.themoviedb.org/3/movie/popular?api_key=03691042128a20db336e14b5d44add1a"
      );
      final response = await http.get(url);
      isLoading.value = false;
        if(response.statusCode == 200){
          final data = movieModelsFromJson(response.body);
          movieList.assignAll(data.results);
        }else{
          Get.snackbar("gagal", "cek internet connection");
        }

    }catch(e){
      Get.snackbar("gagal", e.toString());
    }finally{
      isLoading.value = false;
    }
  }
}
