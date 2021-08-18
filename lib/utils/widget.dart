import 'package:flutter/material.dart';

class UtilWidget{
  static Widget buildLogo( BuildContext context ){
    return Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.network("https://ebudezain.com/images/background/avatar-developer.jpg"),
      ),
    );
  }
}