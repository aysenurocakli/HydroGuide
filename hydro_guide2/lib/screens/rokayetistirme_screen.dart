import 'package:flutter/material.dart';

import '../components/backIconButton.dart';
import '../components/background.dart';

class Roka_Yetistirme extends StatefulWidget {
  const Roka_Yetistirme({super.key});

  @override
  State<Roka_Yetistirme> createState() => _Roka_YetistirmeState();
}

class _Roka_YetistirmeState extends State<Roka_Yetistirme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left:20.0, top:70.0),
              child: Column(
                children: [
                  buildYetistirme(),
                  buildKalanSure(),
                  buildAsama(),
                  buildHasat(),
                  SizedBox(height: 20),
                  buildText(),
                  SizedBox(height: 20),
                  buildTextInfo(),
                  SizedBox(height: 10),
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
      ),
    );
  }
  Widget buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Aşamalar temel olarak 4’e ayrılıyor.",
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
  Widget buildTextInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fide:\n Çimlenmeden sonra fide aşaması başlar. Fide, henüz tam olarak olgunlaşmamış olan bir tohumdan yeni başlayan genç bitkilerdir. Genellikle birkaç yaprağa sahiptirler ve henüz olgunlaşmamışlardır. Bu aşamada, fidelerin sulanması, doğru ışıklandırma ve bazen zararlılardan ve aşırı hava koşullarından korunması gibi bakım gerektirir",
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            color: Colors.white,
          ),
        ),
      ],
    );
  }



  Widget buildYetistirme() {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Ekim Tarihiniz:',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        Container(
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(10.0),

        ),

      ],
    );
  }
  Widget buildKalanSure() {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Diğer aşamaya geçmek için kalan süre:',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        Container(
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(10.0),

        ),

      ],
    );
  }
  Widget buildAsama() {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Şu anki aşama:',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        Container(
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(10.0),

        ),

      ],
    );
  }
  Widget buildHasat() {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Hasat için kalan süre:',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        Container(
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(10.0),

        ),

      ],
    );
  }

}
