import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
                          height: 75,
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
                          height: 75,
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
                height: 80, // Tinggi kontainer
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
                height: 200, // Tinggi kontainer
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
                    SizedBox(height: 20,)
                  ],
                ),
              ),
              CarouselWithDots()
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

//carousel

class MyCarouselSlider extends StatefulWidget {
  @override
  _MyCarouselSliderState createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  int _current = 0;
  List<String> images = [
    'image1.jpg',
    'image2.jpg',
    'image3.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.asset(
                    'assets/$image', // Adjust this to your image paths
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((image) {
            int index = images.indexOf(image);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.blue : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

// class slider extends StatefulWidget {
//    @override
//   State<slider> createState() => _sliderState();
// }

// class _sliderState extends State<slider> {
//   List itemColors = [Colors.green, Colors.purple, Colors.blue];
//   int currentIndex=0;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 200,
//                 width: double.infinity,
//                 child: CarouselSlider(
//                   items: [
//                   for(int i = 0; i< itemColors.length;i++)
//                   Container(
//                     alignment: Alignment.center,
//                     margin: 
//                     EdgeInsets.symmetric(horizontal: 10, vertical: 30),
//                     decoration: BoxDecoration(
//                       color: itemColors[i],
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow:[
//                         BoxShadow(
//                           color: Colors.grey,
//                           spreadRadius: 2,
//                           blurRadius: 8,
//                           offset: Offset(4, 4))
//                       ]),
//                       child: Text('Flutter',
//                       style: TextStyle(color: Colors.white, fontSize: 15)
//                       ),
//                   )
//                 ]
//                 , options: CarouselOptions(
//                   onPageChanged: (index, reason){
//                     setState(() {
//                       print(reason.toString());
//                       currentIndex=index;
//                     });
//                   },
//                   autoPlay: true),
//                 )
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center, children: [
//                     for(int i=0; i<itemColors.length;i++)
//                     Container(
//                       height: 13,
//                       width: 13,
//                       margin: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         color: currentIndex==i ? Colors.blue : Colors.white,
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey,
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: Offset(2, 2)
//                           )
//                         ]
//                       ),
//                     )
//                   ],
//                 )
//             ],
//           ),
//         )));
//   }
// }

class CarouselWithDots extends StatefulWidget {
  @override
  _CarouselWithDotsState createState() => _CarouselWithDotsState();
}

class _CarouselWithDotsState extends State<CarouselWithDots> {
  int _current = 0; // Indeks item aktif

  List<String> imageUrls = [
    'https://assets.klikindomaret.com/share/HERO_BNR_LINK-AJA-14-NOV%20(1).jpg',
    'https://article.moinves.co.id/content/images/2021/07/image-1.jpg',
    'https://assets.klikindomaret.com/share/HERO_BNR_LINK-AJA-14-NOV%20(1).jpg',
    // Tambahkan lebih banyak URL gambar sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 175,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index; // Perbarui indeks item aktif
              });
            },
          ),
          items: imageUrls.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 9.0, vertical: 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Border radius 20
                    child: Image.network(url, fit: BoxFit.cover),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: imageUrls.map((url) {
            int index = imageUrls.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.red : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}