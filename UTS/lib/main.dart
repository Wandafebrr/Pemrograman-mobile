import 'package:flutter/material.dart';
import 'package:uts/home_page.dart';
import 'package:uts/navbar.dart';
import 'package:uts/transaction.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
        home: Navbar(),
        // return SplashHome();
    );
  }
}