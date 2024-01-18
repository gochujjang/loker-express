import 'package:flutter/material.dart';
import 'package:loker_express/assets/colors/colors.dart';
import 'package:loker_express/widgets/navbarAfterLogin.dart';

class detailPelatihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: NavbarAfterLogin(activePage: ActivePage.Program),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(255, 255, 255, 1)
          ),
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
          padding: EdgeInsets.symmetric(vertical: 76, horizontal: 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 1440,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Equipment Technician",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 30, 43, 1),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
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
                        fixedSize: MaterialStateProperty.all(Size(200, 60)),
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
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 58),
                child: Row(
                  children: [
                    Image.asset('lib/assets/emtek.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Text(
                        "EMTEK",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Deskripsi Pelatihan :",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                "Para Teknisi Peralatan Pertanian kami akan mengikuti program pelatihan komprehensif yang dirancang untuk meningkatkan pemahaman mereka tentang mekanika dan teknologi peralatan pertanian. Pelatihan akan mencakup modul pemeliharaan preventif, teknik diagnosis cepat, dan prosedur perbaikan sesuai dengan standar keselamatan kerja yang berlaku. Selain itu, mereka akan diajarkan tentang pembaruan terkini dalam teknologi pertanian dan praktik terbaik dalam manajemen inventaris suku cadang. Para peserta pelatihan juga akan diberikan wawasan tentang komunikasi efektif dengan operator peralatan dan kolaborasi yang sukses dengan tim pertanian. Pelatihan ini tidak hanya menekankan aspek teknis, tetapi juga memberikan pemahaman mendalam tentang peran strategis Teknisi Peralatan Pertanian dalam mendukung operasional pertanian secara menyeluruh. Melalui kombinasi sesi teori, demonstrasi praktis, dan studi kasus, kami bertujuan untuk memastikan bahwa para Teknisi Peralatan Pertanian kami memiliki keterampilan dan pengetahuan yang diperlukan untuk melaksanakan tugas mereka dengan efisien dan efektif dalam lingkungan pertanian yang dinamis.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Kriteria Pendaftaran :",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView(
                shrinkWrap: true, // Set shrinkWrap to true
                children: [
                  ListTile(
                    leading: Icon(Icons.circle, size: 10,),
                    title: Text("Pendidikan minimal SMA atau sederajat",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  ListTile(
                    leading: Icon(Icons.circle, size: 10,),
                    title: Text("Siap konsisten belajar",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  ListTile(
                    leading: Icon(Icons.circle, size: 10,),
                    title: Text("Surat komitmen",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  
                ],
              ),
              Text(
                "Benerfit Pelatihan :",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView(
                shrinkWrap: true, // Set shrinkWrap to true
                children: [
                  ListTile(
                    leading: Icon(Icons.circle, size: 10,),
                    title: Text("Peningkatan Keterampilan Teknis",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  ListTile(
                    leading: Icon(Icons.circle, size: 10,),
                    title: Text("Bagi yang hasil pelatihan yang bagus lebih muda keterima pekerjaan di company",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  ListTile(
                    leading: Icon(Icons.circle, size: 10,),
                    title: Text("Keunggulan Kompetitif dalam Karir",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  ListTile(
                    leading: Icon(Icons.circle, size: 10,),
                    title: Text("Bonus Kinerja",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  ListTile(
                    leading: Icon(Icons.circle, size: 10,),
                    title: Text("Peluang Pengembangan Karir",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
