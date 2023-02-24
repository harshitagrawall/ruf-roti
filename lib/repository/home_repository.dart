import 'package:wireframe_flaxen/data/network/base_api_services.dart';
import 'package:wireframe_flaxen/data/network/network_api_services.dart';
import 'package:wireframe_flaxen/modal/home_modal.dart';
import 'package:wireframe_flaxen/resources/app_url.dart';

class HomeRepository {
  BaseApiServices _apiServices = NetworkApiResponse();

  Future<MovieListModel> fetchMoviesList() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.homeEndPoint);
      return response =MovieListModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
