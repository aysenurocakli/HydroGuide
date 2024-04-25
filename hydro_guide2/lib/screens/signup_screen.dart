import 'package:flutter/material.dart';
import 'package:hydro_guide2/screens/homepage_screen.dart';
import 'package:hydro_guide2/screens/welcome_screen.dart';
import '../components/backIconButton.dart';
import '../components/background.dart';
import '../components/roundedButton.dart';
import '../components/roundedButtonLong.dart';
import '../components/textFieldContainer.dart';
import 'package:hydro_guide2/screens/login_screen.dart';



class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _nameController;
  late TextEditingController _surnameController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
    _surnameController = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _surnameController.dispose();
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
                SizedBox(height: 50), // Boşluk ekleyebilirsiniz
                ClipRRect(
                  borderRadius: BorderRadius.circular(90), // Kenar yuvarlaklığını ayarlayın
                  child: Image.asset(
                    'assets/images/signfoto.jpg',
                    fit: BoxFit.cover, // Fotoğrafı sığdırmak için uygun fit modunu seçin
                    width: size.width * 0.5, // Genişlik ayarlayın
                    height: 200, // Yükseklik ayarlayın
                  ),
                ),
                buildInformation(size),
                buildNameFormField(_nameController),
                buildSurnameFormField(_surnameController),
                buildEmailFormField(_emailController),
                buildPasswordFormField(_passwordController),
                SizedBox(height: 20),
                buildLoginButton("Kayıt Ol"),
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
        SizedBox(height: size.height * 0.06),
        Container(
          margin: const EdgeInsets.only(bottom: 25.0),
          child: const Text(
            'Bize katılmak mı istiyorsun?',
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Montserrat-Extraligth',
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
  Widget buildPasswordFormField(TextEditingController controller) {
    return TextFieldContainer(
      hintText: 'Şifre',
      //icon: Icons.lock,
      //icon2: Icons.visibility,
      isObsecure: true,
      keyboardType: TextInputType.none,
      controller: controller,
      onChanged: (value) {
        // E-posta değeri değiştiğinde yapılacak işlemler
      },
    );
  }
  Widget buildEmailFormField(TextEditingController controller) {
    return TextFieldContainer(
      hintText: 'E-posta',
      //icon: Icons.email,
      isObsecure: false,
      keyboardType: TextInputType.none,
      controller: controller,
      onChanged: (value) {
        // E-posta değeri değiştiğinde yapılacak işlemler
      },
    );
  }
  Widget buildNameFormField(TextEditingController controller) {
    return TextFieldContainer(
      hintText: 'İsim',
      isObsecure: false,
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      onChanged: (value) {
        // E-posta değeri değiştiğinde yapılacak işlemler
      },
    );
  }
  Widget buildSurnameFormField(TextEditingController controller) {
    return TextFieldContainer(
      hintText: 'Soyisim',
      isObsecure: false,
      keyboardType: TextInputType.emailAddress,
      controller: controller,
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
          MaterialPageRoute(builder: (context) => LoginPage()), // Yeni sayfaya yönlendirme
        );
      },
    );
  }


}
