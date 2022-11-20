import 'package:flutter/material.dart';
import 'package:portofolio1/navigasi.dart';
import 'package:portofolio1/screen/detailProduct.dart';
import 'package:portofolio1/screen/getStarted.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery',
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      home: const GetStarted()
    );
  }
}
