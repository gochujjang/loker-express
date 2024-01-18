import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loker_express/assets/colors/colors.dart';
import 'package:loker_express/widgets/TextField.dart';
import 'package:loker_express/widgets/bottom.dart';
import 'package:loker_express/widgets/button.dart';
import 'package:loker_express/widgets/navbar.dart';

class registerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
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
            child: Container(
          child: Column(
            children: [
              const Text(
                "Daftar",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
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
                margin: const EdgeInsets.only(top: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                        "Nomor Handphone",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    CustomTextField(
                        hintText: "Masukkan nomor handphone anda yang aktif",
                        isPhoneNumber: true),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: GreenButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/userProfile');
                    }, width: 500, height: 50, text: "Daftar"),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Sudah punya akun? "),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text("Masuk",
                      style: TextStyle(
                        color: AppColors.darkGreen,
                      ),),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
