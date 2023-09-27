// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget ketegori(String title, int index) {
      return GestureDetector(
        child: Container(
          padding: EdgeInsets.only(left: 12, right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 16, left: 24, bottom: 16),
            child: Container(
              padding: EdgeInsets.only(left: 18),
              width: 283,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F7),
              ),
              child: Row(
                children: [
                  Icon(
                    Iconsax.search_normal,
                    color: Colors.black,
                    size: 26,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Cari Pakaian Pria",
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: Row(
                children: [
                  Icon(
                    Iconsax.notification,
                    color: Colors.black,
                    size: 26,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(
                      Iconsax.bag,
                      color: Colors.black,
                      size: 26,
                    ),
                  )
                ],
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.5),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 48, left: 28),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Tanggal Tua Hemat",
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff292D32)),
                              ),
                              Text(
                                "Flash Sale Serba",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Color(0xff292D32)),
                              ),
                              Text(
                                "RP50 ribuan",
                                style: GoogleFonts.inter(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff292D32)),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text("S&K Berlaku")
                            ],
                          ),
                          SizedBox(
                            width: 1.0,
                          ),
                          Image.asset(
                            'assets/orang.png',
                            width: 112,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kategori',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lihat Semua',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ketegori('Semua', 0),
                          SizedBox(
                            width: 6,
                          ),
                          ketegori('Kemeja', 0),
                          SizedBox(
                            width: 6,
                          ),
                          ketegori('Sepatu', 0),
                          SizedBox(
                            width: 6,
                          ),
                          ketegori('Aksesoris', 0),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/1.png",
                                    width: 175,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Batik Pria Lengan\nPanjang",
                                    style: GoogleFonts.inter(fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Rp199.900",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/sepatu.png",
                                      width: 175,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "New Balance 992\nGrey Original",
                                      style: GoogleFonts.inter(fontSize: 15),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Rp1.240.000",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/celana.png",
                                    width: 175,
                                    height: 175,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Skinny Jeans Dark\nBlue Wanita",
                                    style: GoogleFonts.inter(fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Rp379.900",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/kacamata.png",
                                    width: 175,
                                    height: 175,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Kacamata Baca\nAnti Radiasi Blue Ray",
                                    style: GoogleFonts.inter(fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Rp125.000",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/kemeja.png",
                                    width: 175,
                                    height: 175,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Kemeja Pria Polos\nengan Pendek Oxford",
                                    style: GoogleFonts.inter(fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Rp119.000",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/hoodie.png",
                                    width: 175,
                                    height: 175,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Human Greatness\nHoodie Hitam",
                                    style: GoogleFonts.inter(fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Rp199.900",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart),
              label: 'Favorit',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.task),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_2user),
              label: 'Profil',
            ),
          ],
        ));
  }
}
