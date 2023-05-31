import 'package:flutter/material.dart';

class Routes{


  static Future<dynamic> pushAndRemoveUntill(Widget widget, BuildContext context){
    return Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder:(context) => widget,), (route) => false
    );
  }



  static Future<dynamic> push(Widget widget, BuildContext context){
    return Navigator.of(context).push(
      MaterialPageRoute(builder:(context) => widget,)
    );
  }


    static Future<dynamic> pushReplacement(Widget widget, BuildContext context){
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder:(context) => widget,)
    );
  }}