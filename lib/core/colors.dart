import 'package:flutter/material.dart';

class ColorsUtil {

  static Color getTextColor(BuildContext context){
    if(Theme.of(context).brightness == Brightness.dark){
      return Colors.white;
    }else {
      return Colors.white;
    }
  }

  static Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }
}