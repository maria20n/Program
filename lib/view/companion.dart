import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_1/models/compalist.dart';
import 'package:project_1/view/taxi.dart';

class Companion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    compMenu()=>InkWell(
      onTap: () {
        Get.to(Taxi());
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
          child: AspectRatio(
            aspectRatio: 13 / 2,
            child: Container(
              child: Row(children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(companion[0].picture, fit: BoxFit.cover),
                ),
                SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(companion[0].fname + " " + companion[0].lname,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'com',
                          fontWeight: FontWeight.bold,
                        )),
                    Text("Country: " + companion[0].government,
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'com',
                        )),
                    Text("Language: " + companion[0].lang,
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'com',
                        )),
                  ],
                ),
              ]),
            ),
          )),
    );
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [],
        backgroundColor: Color(0xffFF9114),
        elevation: 0,
        titleSpacing: 70,
        toolbarHeight: 50.0,
        title: Text('Want a Companion ?',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Com',
            )),
      ),
      body: Center(
          child: Container(
        height: 800,
        width: 400,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 0,
                blurRadius: 0,
              ),
            ]),
        child: ListView.separated(itemBuilder: (context,index)=>compMenu(),itemCount:10,separatorBuilder:(context,index)=>Divider(color: Colors.black26, endIndent: 10, indent: 10),
          
        ),
      )),
    );
  }
}


