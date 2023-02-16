import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

class Utils {
  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(15),
          message: message,
          duration: const Duration(seconds: 3),
          borderRadius: BorderRadius.circular(8),
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: Colors.red,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: const Icon(
            Icons.error,
            size: 28,
            color: Colors.white,
          ),
        ));
  }

  static void fieldFocusChange(
      FocusNode currentFocus, FocusNode nextFocus, BuildContext context) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static const String mismatch = 'Passwords do not match';
  static const startYellow = Colors.yellow;

  static const buttonColorBlue = Colors.blue;

  static const Color blackColor= Colors.black;

  static final grey100 = Colors.grey.shade100;

  static final grey400 = Colors.grey.shade400;

  static final grey500 = Colors.grey.shade500;

  static final buttonColorGrey = Colors.grey.shade600;

  static final grey900 = Colors.grey.shade900;

  static const Color whiteColor = Colors.white;

  static const Color redColor = Colors.red;

  static const Color greyColor = Colors.grey;

  static const FontWeight buttonWeight = FontWeight.w200;

  static const FontWeight buttonWeight300 = FontWeight.w300;

  static const FontWeight buttonWeight400 = FontWeight.w400;

  static const FontWeight buttonWeightHeavy = FontWeight.w500;
}
