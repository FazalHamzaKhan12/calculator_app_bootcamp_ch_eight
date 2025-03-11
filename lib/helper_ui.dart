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
          onTap: onPress,
          child: Container(
            height: 80,
            decoration:
                BoxDecoration(color: colorCircle, shape: BoxShape.circle),
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
