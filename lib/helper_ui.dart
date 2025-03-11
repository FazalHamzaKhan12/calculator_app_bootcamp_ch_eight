import 'package:flutter/material.dart';

const Color textColor = Colors.white;
const Color otherColor = Colors.orange;

class MyButton extends StatelessWidget {
  final String tittle;
  final Color colorCircle;
  final VoidCallback onPress;

  const MyButton(
      {super.key,
      required this.tittle,
      required this.colorCircle,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: InkWell(
          customBorder: CircleBorder(),
          // Ensures the splash is circular
          borderRadius: BorderRadius.circular(1000),
          // Optional for circular border
          onTap: onPress,
          child: Container(
            height: 80,
            width: 80, // Makes it a perfect circle
            decoration: BoxDecoration(
              color: colorCircle,
              shape: BoxShape.circle, // Ensures the container is circular
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(0.3),
                  // Shadow color with opacity
                  offset: Offset(0, 4),
                  // Shadow offset
                  blurRadius: 6,
                  // Blur radius
                  spreadRadius: 2, // Spread radius
                ),
              ],
            ),
            child: Center(
              child: Text(
                tittle,
                style: TextStyle(color: textColor, fontSize: 19),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
