import 'package:flutter/material.dart';

class Styles {
  static mainTitle() {
    return TextStyle(
        fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white);
  }

  static inputDecoration(hintText, icon) {
    return InputDecoration(
      prefixIcon: icon,
      border: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      disabledBorder: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      enabledBorder: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      errorBorder: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      focusedErrorBorder: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      focusedBorder: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    );
  }
}
