import 'package:flutter/material.dart';
import 'package:loker_express/widgets/navbarAfterLogin.dart';

class programPekerjaan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: NavbarAfterLogin(activePage: ActivePage.Program)),
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(255, 255, 255, 1)),
            margin: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
            padding: EdgeInsets.symmetric(vertical: 76, horizontal: 76),
            child: Column(
              children: [
                Text(
                  "Program yang tersedia",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 30, 43, 1),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
