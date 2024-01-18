import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loker_express/assets/colors/colors.dart';
import 'package:loker_express/widgets/TextField.dart';
import 'package:loker_express/widgets/navbar.dart';
import 'package:loker_express/widgets/bottom.dart';
import 'package:loker_express/widgets/button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Navbar(
            onMasukPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            onDaftarPressed: () {
              Navigator.pushNamed(context, '/register');
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
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
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    CustomTextField(hintText: "Masukkan email anda"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    CustomTextField(
                      hintText: "Masukkan password anda",
                      isPassword: true,
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: GreenButton(
                      onPressed: () {}, width: 500, height: 50, text: "Masuk")),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Belum punya akun? "),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        "Daftar",
                        style: TextStyle(
                          color: AppColors.darkGreen,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // bottom(),
            ],
          ),
        )));
  }
}
