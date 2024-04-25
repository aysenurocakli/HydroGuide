import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydro_guide2/screens/homepage_screen.dart';
import 'package:hydro_guide2/screens/signup_screen.dart';
import '../components/backIconButton.dart';
import '../components/background.dart';
import '../components/roundedButtonLong.dart';
import '../components/textFieldContainer.dart';
import 'package:hydro_guide2/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  late FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //late AnimationController _controller;

  Future<bool> login(String email, String password) async {
    try {

      final DocumentSnapshot userSnapshot = await _firestore.collection('Users').doc(email).get();
      ("login screen login function data");
      print(userSnapshot.data());
      if (userSnapshot.exists) {
        final userData = userSnapshot.data();
        if ((userData as Map<String, dynamic>)['sifre'] == password) {
          return true;
        } else {
          Fluttertoast.showToast(
            msg: 'Geçersiz şifre',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.black.withOpacity(0.8),
            textColor: Colors.white,
            fontSize: 16.0,
          );

          return false;
        }
      } else {
        Fluttertoast.showToast(
          msg: 'Geçersiz email',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black.withOpacity(0.8),
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return false;
      }
    } catch (e) {
      print('Error occurred during login: $e');
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    //_controller = AnimationController(vsync: this);
  }


  @override
  void dispose() {
    // _controller.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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

                buildInformation(size),
                buildEmailFormField(),
                buildPasswordFormField(),
                SizedBox(height: 30),
                buildLoginButton("Giriş Yap"),
                SizedBox(height: 80),
                ClipRRect(
                  borderRadius: BorderRadius.circular(90), // Kenar yuvarlaklığını ayarlayın
                  child: Image.asset(
                    'assets/images/loginfoto.jpg',
                    fit: BoxFit.cover, // Fotoğrafı sığdırmak için uygun fit modunu seçin
                    width: size.width * 0.5, // Genişlik ayarlayın
                    height: 200, // Yükseklik ayarlayın
                  ),
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
  Widget buildInformation(Size size) {
    return Column(
      children: [
        SizedBox(height: size.height * 0.09),
        Container(
          margin: const EdgeInsets.only(bottom: 45.0),
          child: const Text(
            'Başlamak için giriş\n yapmalısın',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Montserrat-Extraligth',
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
  Widget buildEmailFormField() {
    return TextFieldContainer(
      hintText: 'E-posta',
      icon: Icons.email,
      isObsecure: false,
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
      onChanged: (value) {
        // E-posta değeri değiştiğinde yapılacak işlemler
      },
    );
  }
  Widget buildPasswordFormField() {
    return TextFieldContainer(
      hintText: 'Şifre',
      icon: Icons.lock,
      icon2: Icons.visibility,
      isObsecure: true,
      keyboardType: TextInputType.none,
      controller: _passwordController,
      onChanged: (value) {
        // E-posta değeri değiştiğinde yapılacak işlemler
      },
    );
  }
  Widget buildLoginButton(String text) {
    return RoundedButtonLong(
      text: text,
      color: Color.fromRGBO(27, 106, 49, 100),
      textColor: Colors.white,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()), // Yeni sayfaya yönlendirme
        );
      },
    );
  }
}