import 'package:flutter/material.dart';
import 'package:loker_express/assets/colors/colors.dart';
import 'package:loker_express/widgets/navbarAfterLogin.dart';

class DetailPekerjaan extends StatelessWidget {
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
              color: Color.fromRGBO(255, 255, 255, 1)),
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
          padding: EdgeInsets.symmetric(vertical: 76, horizontal: 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
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
              Divider(
                height: 50,
              ),
              Text(
                "Deskripsi Pekerjaan :",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                "Sebagai Teknisi Peralatan Pertanian, tanggung jawab utama Anda adalah melaksanakan perawatan preventif dan perbaikan peralatan pertanian, termasuk traktor, alat tanam, dan peralatan lainnya. Anda akan memantau kinerja peralatan untuk mendeteksi potensi kerusakan, melakukan diagnosis cepat, dan melaksanakan perbaikan sesuai standar keamanan dan kualitas. Laporan rutin tentang pemeliharaan, perbaikan, dan pembaruan peralatan juga akan menjadi bagian dari pekerjaan Anda. Kolaborasi dengan tim pertanian untuk memastikan kesiapan operasional peralatan, memastikan kepatuhan terhadap peraturan keselamatan, dan memberikan pelatihan kepada operator peralatan juga akan menjadi bagian integral dari peran ini. Sebagai seorang profesional, Anda diharapkan memiliki pendidikan di bidang Teknik Mesin atau setara, pengalaman kerja terkait, keterampilan analisis yang baik, dan pemahaman mendalam tentang prinsip mekanika dan teknologi peralatan pertanian. Kemampuan komunikasi yang baik, keterampilan administrasi, dan fleksibilitas dalam bekerja di lapangan akan menjadi nilai tambah dalam melaksanakan tugas ini.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Kriteria Pekerjaan :",
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
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Pendidikan minimal SMA atau sederajat",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Sudah mengikuti pelatihan dari company",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Kemampuan operasional untuk menggunakan peralatan pertanian dan alat bantu yang diperlukan.",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Kemampuan bekerja secara efektif dalam tim, terutama dengan tim pertanian untuk memastikan kesiapan operasional peralatan.",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Fleksibilitas untuk bekerja di lapangan dan kesiapan untuk bekerja secara fleksibel sesuai kebutuhan operasional.",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Benerfit Pekerjaan :",
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
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Gaji sebesar Rp.7.000.000,00",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Asuransi Kesehatan dan Jiwa",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Fasilitas Kesejahteraan Karyawan",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Bonus Kinerja",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 10,
                    ),
                    title: Text(
                      "Peluang Pengembangan Karir",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
