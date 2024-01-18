import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
          height: 120,
          width: 1440,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 36),
            color: Color.fromRGBO(0, 30, 43, 1), // Sesuaikan warna sesuai kebutuhan
            child: const Text(
              "© 2023 Brewtopia. All Rights Reserved.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 32,
                color: Colors.white, // Sesuaikan warna teks sesuai kebutuhan
              ),
            ),
          ),
      ),
    );
  }
}
