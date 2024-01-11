import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0), child: Navbar()),
        body: Center(
          child: Image.asset(
            'assets/images/banner_homepage.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 40.0,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        height: 1.5,
        color: Color.fromRGBO(30, 144, 77, 1),
      ),
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({Key? key})
      : super(key: key); // Perbaiki penulisan key dan tambahkan tanda tanya (?)

  @override
  State<Navbar> createState() => _NavbarState(); // Perbaiki penamaan _Navbar
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.fromLTRB(
            50, 42, 50, 42), // Sesuaikan padding sesuai kebutuhan
        child: Heading(text: "LokerExpress"),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 12.0), // Sesuaikan padding sesuai kebutuhan
            child: TextButton(
              onPressed: () {},
              child: Text("Daftar"),
            )),
        Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 100.0), // Sesuaikan padding sesuai kebutuhan
            child: TextButton(
              onPressed: () {},
              child: Text("Masuk"),
            )),
      ],
    );
  }
}
