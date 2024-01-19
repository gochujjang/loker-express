import 'package:flutter/material.dart';
import 'package:loker_express/assets/colors/colors.dart';
import 'package:loker_express/widgets/navbar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:loker_express/widgets/navbarAfterLogin.dart';

class userProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: NavbarAfterLogin(activePage: ActivePage.Program),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 194),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                width: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'lib/assets/ihsan 2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 100),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Nama Lengkap: ",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Ihsan Kurniawan",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(
                        height: 24), // Gunakan SizedBox untuk memberikan jarak
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Email: ",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "ihsanKurniawan@gmail.com",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(height: 24),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "No. HP: ",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "08123928399",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(height: 24),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Pendidikan Terakhir: ",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Sekolah Menengah Atas",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(height: 24),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Status Pernikahan: ",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Belum Menikah",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Curriculum Vitae (Wajib)",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Container(
                      width: 520,
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "cv.pdf",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    color: Color.fromRGBO(93, 108, 116, 1),
                                    fontWeight: FontWeight.w400),
                              ),
                              TextButton(
                                  onPressed: pickFile,
                                  child: Text("Pilih File")),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Curriculum Vitae (Wajib)",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 520,
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "KTP.pdf",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    color: Color.fromRGBO(93, 108, 116, 1),
                                    fontWeight: FontWeight.w400),
                              ),
                              TextButton(
                                  onPressed: pickFile,
                                  child: Text("Pilih File")),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Sertifikat (Opsional)",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 520,
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Sertifikat1.pdf",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        color: Color.fromRGBO(93, 108, 116, 1),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Sertifikat2.pdf",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        color: Color.fromRGBO(93, 108, 116, 1),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              TextButton(
                                  onPressed: pickFile,
                                  child: Text("Pilih File")),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: 520,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                fixedSize: const MaterialStatePropertyAll(
                                    Size(200, 60)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromRGBO(0, 30, 43, 1)),
                              ),
                              child: const Text(
                                "Edit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                fixedSize: const MaterialStatePropertyAll(
                                    Size(200, 60)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                backgroundColor: const MaterialStatePropertyAll(
                                    AppColors.darkGreen),
                              ),
                              child: const Text(
                                "Simpan",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> pickFile() async {
  try {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      print('Path: ${file.path}');
      print('Name: ${file.name}');
      print('Bytes: ${file.bytes}');
      print('Size: ${file.size}');
    } else {
      // User canceled the picker
      print('User canceled the picker');
    }
  } catch (e) {
    print('Error while picking the file: $e');
  }
}
