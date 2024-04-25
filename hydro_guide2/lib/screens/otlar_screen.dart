import 'package:flutter/material.dart';
import 'package:hydro_guide2/components/background.dart';
import 'package:hydro_guide2/components/buttonImage.dart';

import '../components/backIconButton.dart';
import 'feslegen_screen.dart';
import 'kisnis_screen.dart';

class Otlar_Screen extends StatelessWidget {
  const Otlar_Screen({Key? key}) : super(key: key);

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
                    buildFeslegenButton(context),
                    buildFrenkButton(context),
                  ],
                ),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildKisnisButton(context),
                    buildRezeneButton(context),
                  ],
                ),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildGibiButton(context),
                    buildKekikButton(context),
                  ],
                ),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildMaydanozButton(context),
                    buildBiberiyeButton(context),
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
                'Otlar:\n',
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
                  ' Otlar, tipik olarak küçük form faktörlerine sığdırdıkları olağanüstü lezzet ve aromalar nedeniyle yetiştirmeyi en sevdiğimiz mahsullerden bazılarıdır. Bu mahsullerin olgunluğa ulaşması genellikle daha uzun sürerken, ister arkadaşlarınız ve aileniz için ister ticari bir üretici olarak yetiştiriyor olun, bu mahsuller kesinlikle dikkatleri üzerine çekecektir. Yerel olarak ve amaca uygun olarak yetiştirilen diğer her şey gibi, bu bitkilerin de sahip olacağı nitelikler, sundukları şeylerle ilgili tüm önyargıları kesinlikle ortadan kaldıracaktır.\n',
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
  Widget buildFeslegenButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Feslegen_Screen()), // Fesleğen Screen'a yönlendirme yapar
        );
      },
      child: ButtonImage(
        text: 'Fesleğen',
        imagePath: 'assets/images/feslegen.jpg',
      ),
    );
  }
  Widget buildFrenkButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'Frenk Soğanı',
        imagePath: 'assets/images/frenk.jpg',
      ),
    );
  }

  Widget buildKisnisButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Kisnis_Screen()),
        );
      },
      child: ButtonImage(
        text: 'Kişniş',
        imagePath: 'assets/images/kisnis.jpg',
      ),
    );
  }
  Widget buildRezeneButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'Rezene',
        imagePath: 'assets/images/rezene.jpg',
      ),
    );
  }
  Widget buildGibiButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'Gibi',
        imagePath: 'assets/images/gibi.jpg',
      ),
    );
  }
  Widget buildKekikButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'Kekik',
        imagePath: 'assets/images/kekik.jpg',
      ),
    );
  }
  Widget buildMaydanozButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'Maydanoz',
        imagePath: 'assets/images/maydanoz.jpg',
      ),
    );
  }
  Widget buildBiberiyeButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Yönlendirme işlemi buraya eklenecek
      },
      child: ButtonImage(
        text: 'Biberiye',
        imagePath: 'assets/images/biberiye.jpg',
      ),
    );
  }




}
