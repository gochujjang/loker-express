import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loker_express/widgets/TextField.dart';
import 'package:loker_express/widgets/button.dart';

import 'widgets/navbar.dart';

class registerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Navbar(),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Daftar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 50,
                  width: 500,
                  child: CustomTextField(
                    hintText: "Masukkan email anda",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 50,
                  width: 500,
                  child: CustomTextField(
                    hintText: "Masukkan password",
                    isPassword: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 50,
                  width: 500,
                  child: CustomTextField(
                    hintText: "Masukan nomor handphone anda yang aktif",
                    isPassword: true,
                  ),
                ),
              ),
              CustomButton(
                  onPressed: () {},
                  width: 500,
                  height: 50,
                  child: const Text(
                    "Daftar",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ))
            ],
          ),
        )));
  }
}
