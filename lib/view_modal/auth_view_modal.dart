import 'package:flutter/cupertino.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/repository/auth_repository.dart';

class AuthViewModal with ChangeNotifier {
  final _myRepo = AuthRepository();

  Future<void> logInApi(dynamic data, BuildContext context) async {
    _myRepo.logInApi(data).then((value) {
      Utils.toastMessage('Login Successfuly');
      print(value.toString());
    }).onError((error, stackTrace) {
      Utils.toastMessage(error.toString());
      print(error.toString());
    });
  }
}
