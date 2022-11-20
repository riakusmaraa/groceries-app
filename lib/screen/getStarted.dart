import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portofolio1/constant.dart';
import 'package:portofolio1/navigasi.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(32),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/getStarted.png'),
              SizedBox(
                height: 24,
              ),
              const Text(
                'Find Your Daily \nGroceries Products',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                textAlign: TextAlign.center,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et eu enim senectus arcu',
                style: TextStyle(
                  fontSize: 16,
                  color: text50,
                ),
              ),
              SizedBox(
                height: 72,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                    minimumSize:
                        MaterialStateProperty.all(Size.fromHeight(50)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff43B658))),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Navigasi()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    color: bg1,
                  ),
                )
            )
            ]),
      )),
    );
  }
}
