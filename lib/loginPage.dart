import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loker_express/widgets/TextField.dart';
import 'package:loker_express/widgets/button.dart';

import 'widgets/navbar.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Navbar(),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Masuk",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20), child: SizedBox(
                height: 50,
                width: 500,
                child: CustomTextField(
                  hintText: "Masukkan email anda",
                ),
              ),),
              Padding(padding: EdgeInsets.symmetric(vertical: 20), child: SizedBox(
                height: 50,
                width: 500,
                child: CustomTextField(
                  hintText: "Masukkan password",
                  isPassword: true,
                ),
              ),),
              CustomButton(child: Text(
                "Masuk",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ), 
              onPressed: () {}, width: 500, height: 50)
            ],
          ),
        )));
  }
}
