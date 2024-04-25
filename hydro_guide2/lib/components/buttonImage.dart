import 'package:flutter/material.dart';

class ButtonImage extends StatelessWidget {
  final String text;
  final String imagePath;

  const ButtonImage({Key? key, required this.text, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            //print('Resme tıklandı');
            // Resme tıklandığında yapılacak işlemler
          },
          splashColor: Colors.black26, // Tıklanma efekti rengi
          highlightColor: Colors.grey.withOpacity(0.5), // Tıklanma rengi
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Kenarları yuvarlatma
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Kenarları yuvarlatma
                boxShadow: [ // Gölgelendirme efekti
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // Gölgenin yönü
                  ),
                ],
              ),
              child: Image.asset(
                imagePath,
                height: 135,
                width: 135,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 6),
        Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        SizedBox(height: 6),
      ],
    );
  }
}
