import 'package:wireframe_flaxen/data/network/base_api_services.dart';
import 'package:wireframe_flaxen/data/network/network_api_services.dart';
import 'package:wireframe_flaxen/resources/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiResponse();

  Future<dynamic> logInApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.logInEndPoint, data);
    } catch (e) {
      throw e;
    }
  }
}

