import 'package:flutter/cupertino.dart';
import 'package:wireframe_flaxen/data/response/api_response.dart';
import 'package:wireframe_flaxen/modal/home_modal.dart';
import 'package:wireframe_flaxen/repository/home_repository.dart';

class HomeViewModal with ChangeNotifier {
  final _myRepo = HomeRepository();

  ApiResponse<MovieListModel> moviesList = ApiResponse.loading();

  setMovieList(ApiResponse<MovieListModel> response) {
    moviesList = response;
    notifyListeners();
  }

  Future<void> fetchMovieList() async {
    setMovieList(ApiResponse.loading());
    _myRepo
        .fetchMoviesList()
        .then((value) => {
              setMovieList(ApiResponse.completed(value)),
            })
        .onError((error, stackTrace) => {
              setMovieList(ApiResponse.error(error.toString())),
            });
  }
}
