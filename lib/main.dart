import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 16, 0, 53),
          Color.fromARGB(255, 105, 49, 184),
        ),
      ),
    ),
  );
}
