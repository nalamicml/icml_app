import 'package:flutter/material.dart';

class MenuText extends StatelessWidget {
  MenuText({super.key, required this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 12.5),
    );
  }
}
