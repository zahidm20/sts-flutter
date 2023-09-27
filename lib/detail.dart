import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool isFavorite = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Iconsax.arrow_left,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Detail Product",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite =
                    !isFavorite; 
              });
            },
            icon: Icon(isFavorite ? Iconsax.heart : Iconsax.heart5,
                color: isFavorite ? Colors.black : Colors.red),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/sepatuu.png",
                  height: 382,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "New Balance 992 Grey Original",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Icon(
                      Iconsax.star5,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '4.8',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: ' (102) | 67 ulasan',
                            style:
                                TextStyle(color: Colors.black45, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "Our Made US 992 men's sneaker has heritage\nstyling, premium materials and comfort features to\nelevate your off-duty look. These men's fashion\nsneakers have a pigskin... ",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: 'Baca selengkapnya',
                        style: TextStyle(
                          color: Colors.green, // Warna yang Anda inginkan
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  "Pilih Ukuran",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    size(),
                    SizedBox(width: 10),
                    size(),
                    SizedBox(width: 10),
                    size(),
                    SizedBox(width: 10),
                    size(),
                    SizedBox(width: 10),
                    size(),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 24),
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rp1.240.000",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 170,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 29, 218, 35),
                  borderRadius: BorderRadius.circular(8)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Tambah Keranjang",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget size() {
  return Padding(
    padding: const EdgeInsets.only(),
    child: Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text('39'),
      ),
    ),
  );
}
