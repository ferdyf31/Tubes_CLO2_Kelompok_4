import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tubes_clo2_kelompok4/View/list_mood/main_listmood.dart';
import 'package:tubes_clo2_kelompok4/View/home.dart';

import 'View/Control.dart';
import 'View/registerView.dart';
import 'View/splashView.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.grey,
    ),
    // DeviceOrientation.portraitUp,
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterView(),
      //MainScreen(),
    );
  }
}


