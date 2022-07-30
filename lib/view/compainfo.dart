import 'package:flutter/material.dart';
import 'package:project_1/models/comcomment.dart';
import 'package:project_1/models/compalist.dart';
import 'package:get/get.dart';

class CompaInfo extends StatefulWidget {
  @override
  _CompaInfoState createState() => _CompaInfoState();
}

class _CompaInfoState extends State<CompaInfo> {
  bool _isLikeButtonClicked = false;
  bool _isDesLikeButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        elevation: 0,
        titleSpacing: 60,
        toolbarHeight: 50.0,
        title: Text(
          "Comanion Profile",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'com',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Positioned(
            right: 135,
            top: 80,
            bottom: 700,
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/person.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 260,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              text(),
              SizedBox(height: 0),
              Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 5),
                        IconButton(
                          splashColor: Colors.white,

                          //padding: EdgeInsets.fromLTRB(20, 15, 300, 100),

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
                        Text(companion[0].likes,
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
                                builder: (context) => buildComment(),
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
                        Text(companion[0].deslikes,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontFamily: 'com',
                            )),
                      ],
                    ),
                    Divider(),
                  ]))
            ]),
          ),
        ]),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xffFF9114);
    Path path = Path()
      ..relativeLineTo(0, 100)
      ..quadraticBezierTo(size.width / 2, 200, size.width, 100)
      ..relativeLineTo(0, -100)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Widget text() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
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
            companion[0].fname + " " + companion[0].lname,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 15),
        Row(children: [
          Text(
            'Language: ',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'com',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(width: 10),
          Text(
            companion[0].lang,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 15),
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
            companion[0].phone,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 15),
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
            companion[0].government,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 15),
        Row(children: [
          Text(
            'Price per hour: ',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'com',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(width: 10),
          Text(
            companion[0].price,
            style: TextStyle(
                color: Colors.black38, fontFamily: 'com', fontSize: 20),
          ),
        ]),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 15),
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
        SizedBox(height: 15),
        Divider(),
      ],
    ),
  );
}

Widget buildComment() => DraggableScrollableSheet(
     // initialChildSize: 0.5,
      minChildSize: 0.2,
      builder: (_, controller) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        padding: EdgeInsets.all(30),
        child: ListView(
          controller: controller,
          children: [
            Center(
              child: Text('Comments',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'com',
                  )),
            ),
            SizedBox(
              height: 30 ,
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
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
        
          ],
        ),
      ),
    );

Widget comment() {
  return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ccomment[0].name + " :",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'com',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              ccomment[0].comment,
              style: TextStyle(
                  color: Colors.black38, fontFamily: 'com', fontSize: 18),
            ),
          ]));
}
