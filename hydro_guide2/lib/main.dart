import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import '../firebase_option.dart';
import 'package:hydro_guide2/components/buttonImage.dart';
import 'package:hydro_guide2/components/imageButton.dart';
import 'package:hydro_guide2/screens/bokchoy_screen.dart';
import 'package:hydro_guide2/screens/cilek_screen.dart';
import 'package:hydro_guide2/screens/feslegen_screen.dart';
import 'package:hydro_guide2/screens/homepage_screen.dart';
import 'package:hydro_guide2/screens/kisnis_screen.dart';
import 'package:hydro_guide2/screens/login_screen.dart';
import 'package:hydro_guide2/screens/marul_screen.dart';
import 'package:hydro_guide2/screens/meyveli_bitkiler_screen.dart';
import 'package:hydro_guide2/screens/otlar_screen.dart';
import 'package:hydro_guide2/screens/roka_screen.dart';
import 'package:hydro_guide2/screens/rokayetistirme_screen.dart';
import 'package:hydro_guide2/screens/signup_screen.dart';
import 'package:hydro_guide2/screens/welcome_screen.dart';
import 'package:hydro_guide2/screens/yesillikler_scren.dart';

Future<void> main() async {
  /*WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:
  DefaultFirebaseOptions.currentPlatform);
  */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body:LoginScreen()

    );
  }

}
