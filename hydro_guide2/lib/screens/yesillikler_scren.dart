import 'package:flutter/material.dart';
import 'package:hydro_guide2/components/background.dart';
import 'package:hydro_guide2/components/buttonImage.dart';
import 'package:hydro_guide2/screens/bokchoy_screen.dart';
import 'package:hydro_guide2/screens/roka_screen.dart';

import '../components/backIconButton.dart';
import 'marul_screen.dart';

class Yesillikler_Screen extends StatelessWidget {
  const Yesillikler_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildPlantText(),
                SizedBox(height: 10),
                // Butonları ikişerli gruplara yerleştirme
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildRokaButton(context),
                    buildBokChoyButton(context),
                  ],
                ),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildKaleButton(context),
                    buildMarulButton(context),
                  ],
                ),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildHardalButton(context),
                    buildPaziButton(context),
                  ],
                ),
                BackIconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPlantText() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 5.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Yeşillikler:\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(height: 1), // Boşluk eklendi
          Row(
            children: [
              Expanded(
                child: Text(
                  ' Bu kategoriye giren mahsullerin yetiştirilmesi genellikle çok kolaydır ve bazı bitki türlerine göre çok daha az bakım gerektirir; bu da onları yeni başlayanlar veya yetiştirmeye daha az zaman ayırıp emeklerinin meyvelerinin tadını çıkarmak için daha fazla zaman isteyen üreticiler için mükemmel kılar.\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Diğer düğmeler buraya eklenir
        ],
      ),
    );
  }

  Widget buildRokaButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Roka_Screen()), // Roka Screen'a yönlendirme yapar
        );
      },
      child: ButtonImage(
        text: 'Roka',
        imagePath: 'assets/images/roka.jpg',
      ),
    );
  }
  Widget buildBokChoyButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bokchoy_Screen()), // Bok Choy Screen'a yönlendirme yapar
        );
      },
      child: ButtonImage(
        text: 'Bok Choy',
        imagePath: 'assets/images/bokchoy.jpg',
      ),
    );
  }
  Widget buildKaleButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'Kale',
        imagePath: 'assets/images/kale.jpg',
      ),
    );
  }
  Widget buildMarulButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Marul_Screen()), // Marul Screen'a yönlendirme yapar
        );
      },
      child: ButtonImage(
        text: 'Marul',
        imagePath: 'assets/images/marul.jpg',
      ),
    );
  }
  Widget buildHardalButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'Hardal Yeşilliği',
        imagePath: 'assets/images/hardal.jpg',
      ),
    );
  }
  Widget buildPaziButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'İsviçre Pazı',
        imagePath: 'assets/images/pazi.jpg',
      ),
    );
  }


}
