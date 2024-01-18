import 'package:flutter/material.dart';
import 'package:loker_express/widgets/button.dart';

import 'package:loker_express/views/homePage.dart';

class Navbar extends StatelessWidget {
  final VoidCallback onDaftarPressed;
  final VoidCallback onMasukPressed;

  Navbar({required this.onDaftarPressed, required this.onMasukPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
                      child: GreenButton(
                        text: "Daftar",
                        width: 140,
                        height: 50,
                        onPressed: onDaftarPressed,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 15, 100, 15),
                      child: CustomButton(
                        text: "Masuk",
                        width: 140,
                        height: 50,
                        onPressed: onMasukPressed,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
