import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Helpers {
  static Future<bool> checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  static showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.black,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
      textColor: Colors.white,
    );
  }
}
