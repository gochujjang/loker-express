import 'package:flutter/material.dart';
import 'package:loker_express/registerPage.dart';
import 'package:loker_express/widgets/button.dart';

import '../assets/colors/colors.dart';
import '../homePage.dart';
import '../loginPage.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(100, 15, 0, 15),
                child: Heading(text: 'LokerExpress'),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
                    child: CustomButton(
                      width: 140,
                      height: 50,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => registerPage()));
                      },
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          color: AppColors.darkGreen,
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 15, 100, 15),
                    child: CustomButton(
                      width: 140,
                      height: 50,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                          color: AppColors.darkGreen,
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

void navigateToLoginPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()), // Ganti dengan LoginPage
  );
}
