import 'package:flutter/material.dart';
import 'package:hydro_guide2/components/backIconButton.dart';
import 'package:hydro_guide2/components/background.dart';
import 'package:hydro_guide2/components/buttonImage.dart';

import 'cilek_screen.dart';

class Meyveli_bitkiler_Screen extends StatelessWidget {
  const Meyveli_bitkiler_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildPlantText(),

                // Butonları ikişerli gruplara yerleştirme
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildCilekButton(context),

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
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 5.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Meyveli Bitkiler:\n',
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
                  ' Bir yetiştiricinin bakış açısına göre meyve veren mahsuller çok benzersizdir. Yaşam döngüleri boyunca çok özel ışık ve besin karışımlarına ihtiyaç duyarlar, büyüme dönemleri çok daha uzundur ve genellikle büyümek için gözle görülür derecede daha fazla beceri ve emek gerektirirler. Neyse ki, doğru yapıldığında meyve veren bitkileri ürün listenize eklemek bu nedenlerden dolayı çok tatmin edici olabilir. Sadece bu da değil, nerede yaşadığınıza bağlı olarak taze meyve ve sebzelere erişim son derece sınırlı olabilir, bu da taze bir ürünü çok daha dikkat çekici ve keyifli hale getirebilir.\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),

          // Diğer düğmeler buraya eklenir
        ],
      ),
    );
  }

  Widget buildCilekButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cilek_Screen()), // Çilek Screen'a yönlendirme yapar
        );
      },
      child: ButtonImage(
        text: 'Çilek',
        imagePath: 'assets/images/cilek.jpg',
      ),
    );
  }
}
