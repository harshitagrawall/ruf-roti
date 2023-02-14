import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:wireframe_flaxen/data/app_exceptions.dart';
import 'package:wireframe_flaxen/data/network/base_api_services.dart';

class NetworkApiResponse extends BaseApiServices {
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      Response response = await post(
        body: data,
        Uri.parse(url),
      ).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    } else if (response.statusCode >= 400 && response.statusCode < 500) {
      throw BadRequestException(
          'Error Occured with Status Code: ${response.statusCode}');
    } else if (response.statusCode >= 500 && response.statusCode < 599) {
      throw BadRequestException(
          'Error Occured with Status Code: ${response.statusCode}');
    }
  }
}
