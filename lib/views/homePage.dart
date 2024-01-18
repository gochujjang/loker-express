import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:loker_express/widgets/button.dart';
import 'package:loker_express/assets/colors/colors.dart';
import 'package:loker_express/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  static const imagePath = "assets/images/banner_homepage.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Navbar(
            onMasukPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            onDaftarPressed: () {
              Navigator.pushNamed(context, '/register');
            },
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Container(
                      height: 700,
                      width: 1440,
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/banner-homepage.jpg'),
                          fit: BoxFit.cover,
                          opacity: 0.8,
                          scale: 2.0,
                          // colorFilter: ColorFilter.srgbToLinearGamma()
                        ),
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(50, 150, 0, 0),
                              child: Text(
                                "Membantu Kamu Mendapatkan Pekerjaan \ndi Sektor Agrikultur",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 44,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(100, 15, 0, 15),
                              child: Text(
                                'Kami membantu Anda mendapatkan pekerjaan dalam bidang agrikultur, meskipun \nAnda tidak memiliki pengalaman atau pengetahuan dasar di sektor agrikultur. \nDengan pendekatan yang ramah dan pelatihan yang komprehensif, kami bertujuan \nuntuk membimbing Anda melangkah ke dalam karir dalam sektor agrikultur serta \nmembuka pintu peluang bahkan bagi mereka yang baru memasuki dunia \nprofessional.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: GreenButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/login');
                                    },
                                    width: 365,
                                    height: 65,
                                    text: "Tunjukkan Caranya"))
                          ],
                        ),
                      ),
                    )),
              ),
            ]),
            Container(
                height: 600,
                width: 1440,
                margin: const EdgeInsets.only(left: 100, top: 100, right: 100),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 25),
                        child: Text(
                          textAlign: TextAlign.start,
                          "Apa Itu LokerExpress?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                    Text(
                      "LokerExpress merupakan platform yang menghubungkan antara pekerja muda dengan perusahaan pertanian  di Indonesia untuk meningkatkan peluang penyerapan pekerja muda dalam sektor pertanian. “We will not have a sustainable society if it is only an action by the government, all sectors of society must be involved” by Ban Ki-moon. Kami berkomitmen untuk menciptakan solusi inovatif yang tidak hanya mengurangi tingkat pengangguran tetapi juga mendorong pertumbuhan ekonomi yang berkelanjutan dan inklusif.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )),
            const Text(
              "Sektor Agrikultur Adalah Masa Depan",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Card(
                      color: Colors.white,
                      elevation: 30,
                      child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 36),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                      top: 32,
                                      bottom: 32,
                                    ),
                                    child: Image.asset(
                                      "lib/assets/hire-me.png",
                                      width: 120,
                                      height: 120,
                                      alignment: Alignment.center,
                                    )),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 32),
                                  child: Text(
                                    "Stabilitas dan Keamanan",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.only(left: 37, right: 37),
                                    child: Text(
                                      "Agrikultur adalah industri pokok yang memainkan peran penting dalam menjaga keberlanjutan masyarakat dan negara yang menjadikan sektor ini selalu di butuhkan",
                                      textAlign: TextAlign.center,
                                    ))
                              ],
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                      color: Colors.white,
                      elevation: 30,
                      child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 36),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                      top: 32,
                                      bottom: 32,
                                    ),
                                    child: Image.asset(
                                      "lib/assets/earth-planet.png",
                                      width: 120,
                                      height: 120,
                                      alignment: Alignment.center,
                                    )),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 32),
                                  child: Text(
                                    "Stabilitas dan Keamanan",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.only(left: 37, right: 37),
                                    child: Text(
                                      "Agrikultur adalah industri pokok yang memainkan peran penting dalam menjaga keberlanjutan masyarakat dan negara yang menjadikan sektor ini selalu di butuhkan",
                                      textAlign: TextAlign.center,
                                    ))
                              ],
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                      color: Colors.white,
                      elevation: 10,
                      child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 36),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                      top: 32,
                                      bottom: 32,
                                    ),
                                    child: Image.asset(
                                      "lib/assets/teacher-hiring.png",
                                      width: 120,
                                      height: 120,
                                      alignment: Alignment.center,
                                    )),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 32),
                                  child: Text(
                                    "Stabilitas dan Keamanan",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.only(left: 37, right: 37),
                                    child: Text(
                                      "Agrikultur adalah industri pokok yang memainkan peran penting dalam menjaga keberlanjutan masyarakat dan negara yang menjadikan sektor ini selalu di butuhkan",
                                      textAlign: TextAlign.center,
                                    ))
                              ],
                            ),
                          ))),
                ),
              ],
            ),
            //Cara Memulai
            Container(
              margin: const EdgeInsets.only(
                  left: 100, right: 100, top: 100, bottom: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Cara Memulai",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 36),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 46),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 24),
                                    child: Text(
                                      "Buat Akun Terlebih Dahulu Jika Belum Punya",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 28,
                                      ),
                                    ),
                                  ),
                                  GreenButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/login');
                                      },
                                      width: 200,
                                      height: 65,
                                      text: "Daftar"),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 46),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Lengkapi Dokumen",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 28,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Text(
                                      "Lengkapi dokumen seperti KTP, Foto pas 4x6, Ijazah, dll",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(93, 108, 116, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 46),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Daftar Program",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 28,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Daftar program pelatihan atau pekerjaan boleh mendaftar lebih dari satu",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(93, 108, 116, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
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
        color: AppColors.darkGreen,
      ),
    );
  }
}
