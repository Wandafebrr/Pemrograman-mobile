import 'package:flutter/material.dart';
import 'package:uts/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final navbarInstance = Navbar();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 249, 252),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://t4.ftcdn.net/jpg/02/15/88/79/360_F_215887984_QCWlnuvmuE7jjf5ivR6tEo40H9HlX6Po.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Left-align the icons
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIcon(
                      imageUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png',
                      width: 32,
                      height: 32,
                    ),
                    Spacer(),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(9),
                        child: CustomIcon(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/481/481367.png',
                          width: 22,
                          height: 22,
                        )),
                    SizedBox(width: 10), // Sesuaikan lebar sesuai kebutuhan

                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(10),
                        child: CustomIcon(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/1077/1077035.png',
                          width: 20,
                          height: 20,
                        )),
                  ],
                ),
                // Add other widgets you want to display here
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color.fromARGB(255, 230, 48, 35),
                      Color.fromARGB(255, 202, 36, 24),
                      Color.fromARGB(255, 190, 32, 21),
                      Color.fromARGB(255, 159, 25, 16),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Mengatur teks dan rectangle sejajar di kiri atas
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                      child: Text(
                        'HI, SOFYAN NOOR ARIEF, S.ST, M.KOM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 140,
                          height: 70,
                          margin: EdgeInsets.only(top: 5, left: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 12),
                                    child: Text(
                                      'Your Balance',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, top: 5, left: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Rp. 10.184',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          width: 20, // Lebar lingkaran ikon
                                          height: 20, // Tinggi lingkaran ikon
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .red, // Warna latar belakang lingkaran
                                            shape: BoxShape
                                                .circle, // Mengatur bentuk latar belakang menjadi lingkaran
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white, // Warna ikon
                                              size: 10, // Ukuran ikon
                                            ),
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
                        Container(
                          width: 140,
                          height: 70,
                          margin: EdgeInsets.only(top: 5, left: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 12),
                                    child: Text(
                                      'Bonus Balance',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, top: 5, left: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          '0',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          width: 20, // Lebar lingkaran ikon
                                          height: 20, // Tinggi lingkaran ikon
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .red, // Warna latar belakang lingkaran
                                            shape: BoxShape
                                                .circle, // Mengatur bentuk latar belakang menjadi lingkaran
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white, // Warna ikon
                                              size: 10, // Ukuran ikon
                                            ),
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
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 70, // Tinggi kontainer
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey, // Warna border abu-abu
                    width: 0.5, // Lebar border
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceAround, // Untuk menyeimbangkan jarak antara gambar dan teks
                      children: [
                        // Gambar 1 dan Teks 1
                        Column(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/512/6379/6379126.png',
                              width: 30, // Lebar gambar
                              height: 30, // Tinggi gambar
                            ),
                            Text(
                              'Top Up',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        // Gambar 2 dan Teks 2
                        Column(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/256/9236/9236032.png',
                              width: 30, // Lebar gambar
                              height: 32, // Tinggi gambar
                            ),
                            Text(
                              'Send Money',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/512/3132/3132830.png',
                              width: 32, // Lebar gambar
                              height: 31, // Tinggi gambar
                            ),
                            Text(
                              'Ticket Code',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/512/274/274749.png',
                              width: 28, // Lebar gambar
                              height: 31, // Tinggi gambar
                            ),
                            Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 150, // Tinggi kontainer
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              'Pulsa/Data',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(
                              'Electrecity',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.orange,
                              size: 30,
                            ),
                            Text(
                              'BPJS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.green,
                              size: 30,
                            ),
                            Text(
                              'mgames',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              'Cable TV',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.work,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(
                              'PDAM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.school,
                              color: Colors.orange,
                              size: 30,
                            ),
                            Text(
                              'Ikon 7',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.green,
                              size: 30,
                            ),
                            Text(
                              'More',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  final String imageUrl;
  final double width; // Tambahkan properti width
  final double height; // Tambahkan properti height

  CustomIcon({
    required this.imageUrl,
    this.width = 30, // Ukuran default (bisa diubah sesuai kebutuhan)
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap event for the custom icon here
      },
      child: Image.network(
        imageUrl,
        width: width, // Gunakan properti width
        height: height, // Gunakan properti height
      ),
    );
  }
}