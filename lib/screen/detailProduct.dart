import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portofolio1/constant.dart';
import 'package:portofolio1/static/product.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 24, right: 24, left: 24),
              child: Stack(
                children: [
                  Image.asset(
                    width: 500,
                    'images/telur.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: bg2,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: primary,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: bg2,
                            child: IconButton(
                              icon: Icon(
                                Icons.search,
                                color: primary,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, right: 24, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Telur Ayam',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('IDR.15k',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700)),
                      // SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: secondary,
                            child: Icon(
                              color: bg1,
                              Icons.remove,
                              size: 16,
                            ),
                          ),
                          Text('  1 Kg  ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: primary,
                            child: Icon(
                              color: bg1,
                              Icons.add,
                              size: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quos esse iure totam incidunt illum voluptas ducimus unde laborum quia odio quae cumque accusantium in neque quo, aliquid aperiam error doloribus nulla eius molestias beatae amet excepturi saepe.orro nostrum dolore perferendis? ',
                        style: TextStyle(fontSize: 14, color: text50),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32))),
                          minimumSize:
                              MaterialStateProperty.all(Size.fromHeight(50)),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff43B658))),
                      onPressed: () {},
                      child: Text(
                        'Add to Chart',
                        style: TextStyle(
                          fontSize: 18,
                          color: bg1,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
