import 'package:flutter/material.dart';
import 'package:loker_express/views/homePage.dart';

enum ActivePage {
  Program,
  Kegiatan,
  Notifikasi,
}

class NavbarAfterLogin extends StatefulWidget {
  final ActivePage activePage;

  NavbarAfterLogin({required this.activePage});

  @override
  _NavbarAfterLoginState createState() => _NavbarAfterLoginState();
}

class _NavbarAfterLoginState extends State<NavbarAfterLogin> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Heading(text: 'LokerExpress'),
            Row(
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/programPekerjaan');
                    },
                    child: Text(
                      "Program",
                      style: TextStyle(
                        color: widget.activePage == ActivePage.Program
                            ? Colors.black // Warna hitam jika halaman Program aktif
                            : Color.fromRGBO(93, 108, 116, 1),
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      // Handle button press and navigate to Kegiatan page
                    },
                    child: Text(
                      "Kegiatan",
                      style: TextStyle(
                        color: widget.activePage == ActivePage.Kegiatan
                            ? Colors.black // Warna hitam jika halaman Kegiatan aktif
                            : Color.fromRGBO(93, 108, 116, 1),
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      // Handle button press and navigate to Notifikasi page
                    },
                    child: Text(
                      "Notifikasi",
                      style: TextStyle(
                        color: widget.activePage == ActivePage.Notifikasi
                            ? Colors.black // Warna hitam jika halaman Notifikasi aktif
                            : Color.fromRGBO(93, 108, 116, 1),
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
