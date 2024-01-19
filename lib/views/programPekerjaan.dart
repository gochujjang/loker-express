import 'package:flutter/material.dart';
import 'package:loker_express/assets/colors/colors.dart';
import 'package:loker_express/widgets/cardList.dart';
import 'package:loker_express/widgets/navbarAfterLogin.dart';

class ProgramPekerjaan extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(150, 40)),
                                backgroundColor: MaterialStatePropertyAll(
                                    AppColors.darkGreen),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                            child: Text(
                              "Pekerjaan",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )),
                        SizedBox(height: 16),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(150, 40)),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(240, 240, 240, 1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                            child: Text(
                              "Pelatihan",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              listPekerjaan(),
              listPekerjaan(),
              listPekerjaan(),
            ],
          ),
        ),
      ),
    );
  }
}

class listPekerjaan extends StatelessWidget {
  const listPekerjaan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image(
                image: AssetImage(
              'lib/assets/pekerjaan-banner.png',
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      "Pekerjaan",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        'lib/assets/emtek.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text(
                        "EMTEK",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 648,
                margin: EdgeInsets.fromLTRB(32, 8, 32, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Equipment Technician",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Sebagai Teknisi Peralatan Pertanian, tanggung jawab utama Anda adalah melaksanakan perawatan preventif dan perbaikan peralatan pertanian, termasuk traktor, alat tanam, dan peralatan lainnya. Anda akan memantau kinerja peralatan untuk mendeteksi potensi kerusakan, melakukan diagnosis cepat, dan melaksanakan perbaikan sesuai standar keamanan dan kualitas.",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/detailPekerjaan');
                      },
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(150, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.darkGreen),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
