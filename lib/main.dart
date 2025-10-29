import 'package:flutter/material.dart';
import 'package:roll_a_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
        ),
      ),
    ),
  );
}
