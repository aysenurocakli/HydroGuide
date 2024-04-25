import 'package:flutter/material.dart';

// uzun rounded button
class RoundedButtonLong extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final Key? key;

  const RoundedButtonLong({
    this.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.023,
          horizontal: size.width * 0.24,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Caviar Dreams',
            color: textColor,
          ),
        ),
      ),
    );
  }
}
