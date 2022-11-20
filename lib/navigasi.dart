import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:portofolio1/constant.dart';
import 'package:portofolio1/screen/profile.dart';
import 'package:portofolio1/screen/order.dart';
import 'package:portofolio1/screen/bookmark.dart';
import 'screen/home.dart';

class Navigasi extends StatefulWidget {
  const Navigasi({Key? key}) : super(key: key);

  @override
  State<Navigasi> createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {

int selectedIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    OrderPage(),
    ListPage(),
    Profile(),
  ];

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, color: primary), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_rounded, color: primary), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_rounded, color: primary), label: 'List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded, color: primary), label: 'Profile'),
        ],
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: primary,
        unselectedItemColor: text50,
        backgroundColor: bg1,
        onTap: onTap,
      ),
      body: _children[selectedIndex],
    );
  }
}