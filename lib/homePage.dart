import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'assets/colors/colors.dart';
import 'widgets/navbar.dart';

class HomePage extends StatelessWidget {
  static const imagePath = "assets/images/banner_homepage.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(100), child: Navbar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 700,
              width: 1440,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/banner-homepage.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                    scale: 2.0,
                    colorFilter: ColorFilter.srgbToLinearGamma()),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(100, 150, 0, 0),
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
                    padding: EdgeInsets.only(left: 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            AppColors.darkGreen),
                        fixedSize: MaterialStateProperty.all(Size(365, 65)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      child: const Text(
                        "Tunjukkan Caranya",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 28),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: 700,
                width: 1440,
                child: const Column(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 20, left: 100, right: 100),
                        child: Text(
                          textAlign: TextAlign.start,
                          "Apa Itu LokerExpress?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 100, right: 100),
                      child: Text(
                        "LokerExpress merupakan platform yang menghubungkan antara pekerja muda dengan perusahaan pertanian  di Indonesia untuk meningkatkan peluang penyerapan pekerja muda dalam sektor pertanian. “We will not have a sustainable society if it is only an action by the government, all sectors of society must be involved” by Ban Ki-moon. Kami berkomitmen untuk menciptakan solusi inovatif yang tidak hanya mengurangi tingkat pengangguran tetapi juga mendorong pertumbuhan ekonomi yang berkelanjutan dan inklusif.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                        ),
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Card(
                      color: Colors.white,
                      elevation: 30,
                      child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Padding(
                            padding: EdgeInsets.only(top: 36),
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
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                      color: Colors.white,
                      elevation: 30,
                      child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Padding(
                            padding: EdgeInsets.only(top: 36),
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
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                      color: Colors.white,
                      elevation: 10,
                      child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Padding(
                            padding: EdgeInsets.only(top: 36),
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
            const Padding(
              padding: EdgeInsets.only(),
              child: Text(
                "Cara Memulai",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100),
              child: Column(
                children: [
                  const Text(
                      "Buat Akun Terlebih Dahulu Jika Belum Punya",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ElevatedButton(onPressed: (){}, child: const Text(
                    "Daftar",

                  ))
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


