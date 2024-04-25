import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle? textStyle;

  const CustomText({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.center,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(

        ),
      ),
      child: Text(
        text,
        style: textStyle ?? const TextStyle(
          fontSize: 51,
          color: Color.fromRGBO(252, 220, 220, 10),

          fontWeight: FontWeight.bold,
          fontFamily:'Montserrat',
        ),
        textAlign: textAlign,
      ),
    );
  }
}
