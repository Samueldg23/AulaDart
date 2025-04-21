import 'package:flutter/material.dart';

class Minhabarra extends AppBar {
  Minhabarra({super.key, String? titulo})
    : super(
        title: Text(titulo ?? "título", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      );
}
