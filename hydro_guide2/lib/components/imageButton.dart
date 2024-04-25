import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({Key? key, required String buttonText, required Null Function() onPressed, required String imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Resme tıklandığında yapılacak işlemler
              },
              child: Ink.image(
                image: AssetImage('assets/images/roka.jpg'),
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Roka',
              style: TextStyle(fontSize: 19, color: Colors.black),
            ),
            SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
