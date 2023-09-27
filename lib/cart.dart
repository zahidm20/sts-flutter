import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int index_sepatu = 1;
  int index_kacamata = 1;
  int index_hoodie = 1;
  int harga_sepatu = 12400000;
  int harga_hoodie = 199000;
  int harga_kacamata = 125000;

  int ongkir = 14000;
  int subtotal = 0;

  @override
  Widget build(BuildContext context) {
    // Fungsi untuk menghitung subtotal
    void hitungSubtotal() {
      subtotal = (index_sepatu * harga_sepatu) +
          (index_kacamata * harga_kacamata) +
          (index_hoodie * harga_hoodie);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Keranjang",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 26,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 16),
              decoration: BoxDecoration(color: Color(0xffF2F2F7)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Iconsax.location),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Dikirim Ke",
                            style: GoogleFonts.inter(
                                fontSize: 14, color: Colors.black45),
                          ),
                        ],
                      ),
                      Text(
                        "Ubah",
                        style: TextStyle(color: Color(0xff00B14F)),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "Jakarta, Cibubur, Kota Wisata\n Madrid No 23",
                      style: GoogleFonts.inter(
                          fontSize: 16, color: Color(0xff292D32)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/sepatu_cart.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Balance 992...",
                              style: GoogleFonts.inter(fontSize: 16)),
                          Text(
                            "40",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Rp${harga_sepatu * index_sepatu}",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff292D32)),
                          ),
                        ],
                      ),
                      Container(
                        width: 73,
                        height: 43,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (index_sepatu > 0) {
                                    setState(() {
                                      index_sepatu -= 1;
                                      hitungSubtotal(); // Hitung subtotal saat tombol diklik
                                    });
                                  }
                                },
                                child: Icon(
                                  Iconsax.minus,
                                  size: 20,
                                ),
                              ),
                              Text(index_sepatu.toString()),
                              InkWell(
                                onTap: () {
                                  if (index_sepatu > -1) {
                                    setState(() {
                                      index_sepatu = index_sepatu + 1;
                                      hitungSubtotal(); // Hitung subtotal saat tombol diklik
                                    });
                                  }
                                },
                                child: Icon(
                                  Iconsax.add,
                                  size: 20,
                                  color: Color(0xff00B14F),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/kacamata_cart.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kacamata Baca ...",
                            style: GoogleFonts.inter(fontSize: 16),
                          ),
                          Text(
                            "-2, Hitam",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Rp${index_kacamata * harga_kacamata}",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff292D32)),
                          ),
                        ],
                      ),
                      Container(
                        width: 73,
                        height: 43,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (index_kacamata > 0) {
                                    setState(() {
                                      index_kacamata -= 1;
                                      hitungSubtotal(); // Hitung subtotal saat tombol diklik
                                    });
                                  }
                                },
                                child: Icon(
                                  Iconsax.minus,
                                  size: 20,
                                ),
                              ),
                              Text(index_kacamata.toString()),
                              InkWell(
                                onTap: () {
                                  if (index_kacamata > -1) {
                                    setState(() {
                                      index_kacamata = index_kacamata + 1;
                                      hitungSubtotal(); // Hitung subtotal saat tombol diklik
                                    });
                                  }
                                },
                                child: Icon(
                                  Iconsax.add,
                                  size: 20,
                                  color: Color(0xff00B14F),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/hoodie_cart.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Human Greatness ,,,",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "XL, Hitam",
                            style: GoogleFonts.inter(fontSize: 12),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Rp${index_hoodie * harga_hoodie}",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff292D32)),
                          ),
                        ],
                      ),
                      Container(
                        width: 73,
                        height: 43,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (index_hoodie > 0) {
                                    setState(() {
                                      index_hoodie -= 1;
                                      hitungSubtotal(); // Hitung subtotal saat tombol diklik
                                    });
                                  }
                                },
                                child: Icon(
                                  Iconsax.minus,
                                  size: 20,
                                ),
                              ),
                              Text(index_hoodie.toString()),
                              InkWell(
                                onTap: () {
                                  if (index_hoodie > -1) {
                                    setState(() {
                                      index_hoodie = index_hoodie + 1;
                                      hitungSubtotal(); // Hitung subtotal saat tombol diklik
                                    });
                                  }
                                },
                                child: Icon(
                                  Iconsax.add,
                                  size: 20,
                                  color: Color(0xff00B14F),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Subtotal",
                      style: GoogleFonts.inter(
                          fontSize: 16, color: Colors.black45),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Ongkir",
                      style: GoogleFonts.inter(
                          fontSize: 16, color: Colors.black45),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      "Total",
                      style: GoogleFonts.inter(
                          fontSize: 16, color: Colors.black45),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Rp$subtotal", // Tampilkan subtotal
                      style: GoogleFonts.inter(fontSize: 16),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Rp$ongkir",
                      style: GoogleFonts.inter(fontSize: 16),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      "Rp${subtotal + ongkir}", // Hitung total dengan menggabungkan subtotal dan ongkir
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                width: 381,
                height: 47,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
