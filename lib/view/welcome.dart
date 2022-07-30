import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/view/welcome1.dart';

class Welcome extends StatelessWidget {
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
              image: AssetImage('assets/welcome.png'),
            ),
          ),
          Positioned(
            bottom: 135,
            right: 125,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffFF9114),
                      spreadRadius: 0,
                      blurRadius: 5,
                    ),
                  ]),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                onPressed: () {
                 Get.to(Welcome1());
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                color: Colors.black,
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'abril',
                   
                  
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
