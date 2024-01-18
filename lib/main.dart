import 'package:flutter/material.dart';
import 'package:loker_express/views/detailPelatihan.dart';
import 'package:loker_express/views/detailPerkerjaan.dart';
import 'package:loker_express/views/homePage.dart';
import 'package:loker_express/views/programPekerjaan.dart';
import 'package:loker_express/views/registerPage.dart';
import 'package:loker_express/views/loginPage.dart';
import 'package:loker_express/views/userProfile.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Color.fromRGBO(240, 240, 240, 1),),
      debugShowCheckedModeBanner: false,
      title: 'LokerExpress',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => registerPage(),
        '/userProfile': (context) => userProfile(),
        '/detailPekerjaan': (context) => DetailPekerjaan(),
        '/detailPelatihan': (context) => detailPelatihan(),
        '/programPekerjaan': (context) => ProgramPekerjaan(),
      },
    );
  }
}
