import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key, required this.borderRadius, required this.width});

  final double borderRadius;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.95, // 95% width of available space
        child: Stack(
          children: [
            Container(
              height: 105, // Height of the box
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(
                    255,
                    33,
                    243,
                    135,
                  ), // Color of the border
                  width: width,
                ),
                borderRadius: BorderRadius.circular(
                    borderRadius), // Circular border radius
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    //hintText: 'Enter text here',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
