import 'package:flutter/material.dart';
import 'package:icml/Widget/custome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      body: Center(
          child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white, width: 5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                offset: Offset(0, 4),
                blurRadius: 20,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                offset: Offset(0, 4),
                blurRadius: 20,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                offset: Offset(0, 4),
                blurRadius: 20,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                offset: Offset(0, 4),
                blurRadius: 20,
              ),
              BoxShadow(
                  color: Colors.black.withOpacity(.25),
                  offset: Offset(0, 4),
                  blurRadius: 20),
            ]),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: CustomTextWidget(text: 'Nur'),
        ),
      )),
    );
  }
}
