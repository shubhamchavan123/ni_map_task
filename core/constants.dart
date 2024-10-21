
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:flutter/material.dart';





class Constants {


  static void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        timeInSecForIosWeb: 1,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black87,
        textColor: Colors.white,
        fontSize: 13.0);
  }

  static bool validateStructure(String value) {
    String passwordPattern =
    // r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
        r'^(?=.*?[a-z])(?=.*?[0-9]).{6,}$';
    RegExp regExp = RegExp(passwordPattern);
    return regExp.hasMatch(value);
  }

  static int pageNo = 1;
  static int pageSize = 10;
}

class StatusCode {
  static const int success = 200;
  static const int failed = 201;
  static const int emptyList = 204;
  static const int unauthorizedUser = 401;
  static const int badRequest = 400;
  static const int forbidden = 403;
  static const int internalError = 500;
}

