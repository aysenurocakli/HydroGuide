import 'package:flutter/material.dart';
import 'package:hydro_guide2/components/homepagebutton.dart';
import 'package:hydro_guide2/screens/meyveli_bitkiler_screen.dart';
import 'package:hydro_guide2/screens/otlar_screen.dart';
import 'package:hydro_guide2/screens/yesillikler_scren.dart';
import '../components/backIconButton.dart';
import '../components/background.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 80),
                buildInformation(size),
                SizedBox(height: 20),
                buildYesillikButton("Yeşillikler"),
                SizedBox(height: 20),
                buildOtlarButton("Otlar"),
                SizedBox(height: 20),
                buildMeyveliButton("Meyveli Bitkiler"),
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

  Widget buildInformation(Size size) {
    return Column(
      children: [
        SizedBox(height: size.height * 0.08),
        Container(
          margin: const EdgeInsets.only(bottom: 55.0),
          child: const Text(
            'Bitkilerimizi üç gruba ayırdık\nseçerek turumuza başlayabilirsin',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Montserrat-Extralight',
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildYesillikButton(String text) {
    return SizedBox(
      width: double.infinity, // Butonun genişliği, ebeveynine genişlik kadar olacak
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: RoundedButtonHomePage(
          text: text,
          color: Color.fromRGBO(27, 106, 49, 100),
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Yesillikler_Screen()), // Yeni sayfaya yönlendirme
            );
          },
        ),
      ),
    );
  }
  Widget buildOtlarButton(String text) {
    return SizedBox(
      width: double.infinity, // Butonun genişliği, ebeveynine genişlik kadar olacak
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: RoundedButtonHomePage(
          text: text,
          color: Color.fromRGBO(27, 106, 49, 100),
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Otlar_Screen()), // Yeni sayfaya yönlendirme
            );
          },
        ),
      ),
    );
  }
  Widget buildMeyveliButton(String text) {
    return SizedBox(
      width: double.infinity, // Butonun genişliği, ebeveynine genişlik kadar olacak
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: RoundedButtonHomePage(
          text: text,
          color: Color.fromRGBO(27, 106, 49, 100),
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Meyveli_bitkiler_Screen()), // Yeni sayfaya yönlendirme
            );
          },
        ),
      ),
    );
  }
}
