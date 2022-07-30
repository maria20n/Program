import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/models/taxilist.dart';
import 'package:project_1/view/taxinfo.dart';

class Taxi extends StatelessWidget {
  Widget build(BuildContext context) {
     taxii()=>InkWell(
          onTap: () {
        Get.to(Taxinfo());
      },
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
             // color: Colors.white,
            ),
            margin: EdgeInsets.fromLTRB(20, 15, 0, 10),
            child: AspectRatio(
              aspectRatio: 13 / 2,
          
            
              child: Container(
                  child: Row(children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset('assets/-taxi.png', fit: BoxFit.cover),
                    ),
                    SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(taxi[0].name,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'com',
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Country: " + taxi[0].government,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'com',
                            )),
                      ],
                    ),
                  ]),
                ),)),
     );
    
    return Scaffold(
      
      
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppBar(
            elevation: 5,
            centerTitle: true,
            title: Text(
              'Taxi offices',
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            flexibleSpace: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                child: Container(
                    padding: EdgeInsets.fromLTRB(25, 120, 0, 0),
                    child: Text(
                        'A Taxi for everyone , Travel securely with us.',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'com',
                            fontWeight: FontWeight.bold,
                            color: Colors.black)))),
            backgroundColor: Color(0xffFF9114),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              color: Colors.black,
              onPressed: () {
                Get.to(Taxi());
              },
            ),
          ),
        ),
        body: Center(
            child: Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ListView.separated(itemBuilder: (context,index)=>taxii(),itemCount:10,separatorBuilder:(context,index)=>Divider(color: Colors.black26, endIndent: 10, indent: 10),)
    
         
        )))
        );
     
       
  }
}





