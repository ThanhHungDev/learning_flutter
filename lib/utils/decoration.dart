


import 'package:flutter/material.dart';

class UtilDecoration {
  static getSimpleDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    );
  }
}


