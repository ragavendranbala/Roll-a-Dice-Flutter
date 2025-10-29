import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.data, {super.key});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(data, style: TextStyle(color: Colors.white, fontSize: 28));
  }
}
