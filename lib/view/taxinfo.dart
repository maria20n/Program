import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/models/taxicomment.dart';
import 'package:project_1/models/taxilist.dart';
import 'package:project_1/view/taxi.dart';

class Taxinfo extends StatefulWidget {
  @override
  _TaxinfoState createState() => _TaxinfoState();
}

comment() => Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    padding: EdgeInsets.all(10),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tcomment[0].name + " :",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'com',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            tcomment[0].comment,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 18),
          ),
        ]));

class _TaxinfoState extends State<Taxinfo> {
  bool _isLikeButtonClicked = false;
  bool _isDesLikeButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Taxi info',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_sharp),
            color: Colors.black,
            onPressed: () {
              Get.to(Taxi());
            },
          ),
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Taxi.jpg'), fit: BoxFit.fill)),
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
        ),
      ),
      body: Column(children: [
        SizedBox(height: 30),
        text(),
        SizedBox(height: 0),
        Expanded(
          child: Container(
              width: 400,
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(width: 5),
                        IconButton(
                          splashColor: Colors.white,
                          icon: _isLikeButtonClicked
                              ? const Icon(Icons.thumb_up_alt_rounded)
                              : const Icon(Icons.thumb_up_alt_outlined),
                          color: _isLikeButtonClicked
                              ? Color(0xffFF9114)
                              : Colors.grey[600],
                          onPressed: () {
                            setState(() {
                              _isLikeButtonClicked = !_isLikeButtonClicked;
                            });
                          },
                        ),
                        SizedBox(width: 5),
                        Text(taxi[0].likes,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontFamily: 'com',
                            )),
                        SizedBox(width: 100),
                        IconButton(
                            icon: Icon(Icons.comment_outlined),
                            onPressed: () => showModalBottomSheet(
                                context: context,
                                builder: (context) => comments(),
                                isDismissible: false,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent)),
                        SizedBox(width: 100),
                        IconButton(
                          splashColor: Colors.white,
                          // padding: EdgeInsets.fromLTRB(0, 15, 20, 100),
                          icon: _isDesLikeButtonClicked
                              ? const Icon(Icons.thumb_down_alt_rounded)
                              : const Icon(Icons.thumb_down_alt_outlined),
                          color: _isDesLikeButtonClicked
                              ? Colors.grey[900]
                              : Colors.grey[600],
                          onPressed: () {
                            setState(() {
                              _isDesLikeButtonClicked =
                                  !_isDesLikeButtonClicked;
                            });
                          },
                        ),
                        SizedBox(width: 5),
                        Text(taxi[0].deslikes,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontFamily: 'com',
                            )),
                      ],
                    ),
                    SizedBox(height: 10),
                  ])),
        )
      ]),
    );
  }
}

Widget text() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        Row(children: [
          Text(
            'Name: ',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'com',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(width: 10),
          Text(
            taxi[0].name,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        Divider(),
        SizedBox(height: 40),
        Row(children: [
          Text(
            'Phone: ',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'com',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(width: 10),
          Text(
            taxi[0].phone,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        Divider(),
        SizedBox(height: 40),
        Row(children: [
          Text(
            'Country: ',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'com',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(width: 10),
          Text(
            taxi[0].government,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        Divider(),
        SizedBox(height: 40),
        Row(children: [
          Text(
            'Price per Km: ',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'com',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(width: 10),
          Text(
            taxi[0].price,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        Divider(),
        SizedBox(height: 40),
        Row(
          children: [
            Text(
              'Reviews: ',
              style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'com',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ],
        ),
        Divider(),
      ],
    ),
  );
}

Widget buildComment() => Column(children: [
      comment(),
      Divider(),
    ]);

Widget comments() {
  return DraggableScrollableSheet(
      minChildSize: 0.2,
      initialChildSize: 0.5,
      builder: (_, controller) => Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            padding: EdgeInsets.all(30),

            child: ListView(controller: controller, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Center(
                  child: Text('Comments',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'com',
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Type your comment'),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: SizedBox(
                  height: 50,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Post',
                        style: TextStyle(fontSize: 20, fontFamily: 'com')),
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(2),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xffFF9114)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                  ),
                )),
                SizedBox(
                  height: 30,
                ),
                Divider(),
                SizedBox(
                  height: 30,
                ),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
                comment(),
                Divider(),
              ]),
            ]),

            //ListView.separated(itemBuilder: (context,index)=>comment(),itemCount:20,separatorBuilder:(context,index)=>Divider(color: Colors.black26, endIndent: 10, indent: 10)),
          ));
}
