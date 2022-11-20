import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portofolio1/screen/detailProduct.dart';
import 'package:portofolio1/constant.dart';
import 'package:portofolio1/static/product.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 24, right: 24, left: 24),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: bg2,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(color: primary, Icons.menu)),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Location',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 215,
                ),
                CircleAvatar(
                  backgroundColor: bg2,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(color: primary, Icons.search)),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: bg2,
                image: DecorationImage(
                    image: AssetImage('images/box-hero.png'),
                    alignment: Alignment.centerRight)),
            margin: EdgeInsets.only(top: 24, right: 24, left: 24),
            padding: EdgeInsets.all(24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Order Our Best \nGroceries Products',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Order Now', style: TextStyle(color: primary)),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffF6F6F6))),
                  )
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, right: 32, left: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Popular Items',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: primary, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (contex) {
                  return DetailProduct();
                }));
              },
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Product('images/pete.png', 'Petai', 'IDR. 12k'),
              Product('images/cabe.png', 'Cabe Rawit', 'IDR. 12k')
            ],
          )),
          InkWell(
            
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (contex) {
                  return DetailProduct();
                }));
              },
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Product('images/telur.png', 'Telur Ayam', 'IDR. 12k'),
              Product('images/paprika.png', 'Paprika', 'IDR. 12k')
            ],
            )
          ),
          InkWell(
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (contex) {
                  return DetailProduct();
                }));
              },  
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Product('images/bawang_merah.png', 'Bawang Merah', 'IDR. 12k'),
              Product('images/alpukat.png', 'Alpukat', 'IDR. 12k')
            ],
          ))
        ],
      ),
    )));
  }
}

//Card Product
Container Product(String images, String productName, String productPrice) {
  return Container(
    height: 250,
    decoration: BoxDecoration(
        border: Border.all(width: 2, color: bg2),
        borderRadius: BorderRadius.circular(8)),
    margin: EdgeInsets.only(top: 24, right: 16, left: 16),
    padding: EdgeInsets.all(16),
    width: 180,
    child: Column(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 180,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(images),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            productName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: primary),
          ),
          Text(
            '1 kg',
            style: TextStyle(color: text50, fontSize: 12),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  productPrice,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                ),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: primary,
                  child: Icon(
                    color: bg1,
                    Icons.add,
                    size: 20,
                  ),
                )
              ])
        ],
      )
    ]),
  );
}