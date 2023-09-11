
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static void toastmessage(String message){
    Fluttertoast.showToast(msg: message);
  }
  static void ShowFlushBarErrorMessage(String message,BuildContext context){
    showFlushbar(context: context, flushbar: Flushbar(
      title: "Error",
      message: message,
      messageColor: Colors.white,
      backgroundColor: Colors.red,
      titleColor: Colors.white,
    )..show(context)
    );
  }
}