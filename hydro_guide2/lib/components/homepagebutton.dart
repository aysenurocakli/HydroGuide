import 'package:flutter/material.dart';

// bitkilerin seçileceği buton
class RoundedButtonHomePage extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const RoundedButtonHomePage({super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 85),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Caviar Dreams',
            color: Color.fromRGBO(12, 67, 7, 100),
          ),
        ),
      ),
    );
  }
}
