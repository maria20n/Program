import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:project_1/view/companion.dart';

class Welcome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 1000,
            width: 1000,
            child: Image(
              image: AssetImage('assets/welcome1.png'),
            ),
          ),
          Positioned(
            bottom: 130,
            right: 112,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color:Color(0xffFF9114) ,
                      spreadRadius: 0,
                      blurRadius: 5,
                    ),
                  ]),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                onPressed: () {
                   Get.to(Companion());
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                color: Colors.black,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Abril',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
