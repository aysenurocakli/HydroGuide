import 'package:flutter/material.dart';

class TextBelowButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final VoidCallback onPressed;

  const TextBelowButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black26,
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Ink.image(
            image: AssetImage(imagePath),
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}



