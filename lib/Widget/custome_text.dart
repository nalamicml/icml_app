import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  CustomTextWidget({super.key, required this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style: GoogleFonts.ubuntu(
        color: Colors.red,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
      overflow: TextOverflow.clip,
    );
  }
}
