import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hydro_guide2/components/background.dart';
import 'package:hydro_guide2/screens/login_screen.dart';
import 'package:hydro_guide2/screens/signup_screen.dart';
import '../components/customTextField.dart';
import '../components/roundedButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
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
                buildWelcome(context),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Kenar yuvarlaklığını ayarlayın
                  child: Image.asset(
                    'assets/images/hydroponic.jpeg',
                    fit: BoxFit.contain, // Görüntünün genişliğe ve yüksekliğe sığacak şekilde küçültülmesini sağlar
                    width: size.width * 0.9,
                    height: 200,
                  ),
                ),
                buildInformation(size),
                SizedBox(height: 20), // Butonlar arasında 20 birimlik bir boşluk bırakır
                buildSignButton('Kayıt Ol'),
                SizedBox(height: 20), // Butonlar arasında 10 birimlik bir boşluk bırakır
                buildLoginButton('Giriş Yap'),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget buildWelcome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          CustomText(
            text: 'Hydro \nGuide\'a\nHoş\nGeldiniz ',

            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }

  Widget buildInformation(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: size.height * 0.03),
        Container(
          margin: const EdgeInsets.only(left: 5.0, top: 1.0),
          child: const Text(
            'HydroGuide hidroponik tarım yöntemi ile bitki yetiştirme konusunda size rehberlik etmesi amacıyla tasarlandı.',

            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Montserrat-Extralight',
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Çiftçilik yolculuğunuz burada başlıyor.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Montserrat-Extralight',
            color: Colors.white,
          ),
        )// Text ve diğer bileşenler arasında 10 birim yükseklikte boşluk bırakır
        // Buraya diğer bileşenleri ekleyebilirsiniz

      ],
    );
  }
  Widget buildLoginButton(String text) {
    return RoundedButton(
      text: text,
      color: Color.fromRGBO(27, 106, 49, 100),
      textColor: Colors.white,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()), // Yeni sayfaya yönlendirme
        );
      },
    );
  }
  Widget buildSignButton(String text) {
    return RoundedButton(
      text: text,
      color: Color.fromRGBO(27, 106, 49, 100),
      textColor: Colors.white,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUp_Screen()), // Yeni sayfaya yönlendirme
        );
      },
    );
  }


}
