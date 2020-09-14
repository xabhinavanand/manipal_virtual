import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'restraunt_data.dart';

class RestrauntPage extends StatelessWidget {
  final restrauntData = [new RestrauntData(Image.asset('AB2.jpeg'), 2, 3)];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrangeAccent,title:Center(child: Text("Virtual Manipal",style: GoogleFonts.balooTammudu(fontSize: MediaQuery.of(context).size.width*0.07),))),
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              color: Colors.deepOrangeAccent,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Restraunts",
                    style: GoogleFonts.quicksand(
                        fontSize: MediaQuery.of(context).size.width * 0.15,
                        letterSpacing: 3,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            )),
            Expanded(
                flex: 1,
                child: Container(
                    decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.width * 0.3),
                  ),
                ))),
            Container(
              child: Divider(
                color: Colors.black45,
                thickness: 1,
                indent: MediaQuery.of(context).size.width * 0.07,
                endIndent: MediaQuery.of(context).size.width * 0.07,
              ),
              color: Colors.white,
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      MyCard(
                          Image.asset(
                            "assets/the-egg-factory.jpg",
                            fit: BoxFit.fill,
                          ),
                          "Egg Factory",
                          "Behind Smriti Bhawan"),
                      MyCard(
                          Image.asset(
                            "assets/manna_rolls.jfif",
                            fit: BoxFit.fill,
                          ),
                          "Manna Rolls",
                          "Near KC"),
                      MyCard(
                          Image.asset(
                            "assets/dollops.jfif",
                            fit: BoxFit.fill,
                          ),
                          "Dollops",
                          "Eswar Nagar"),
                      MyCard(
                          Image.asset(
                            "assets/basil_cafe.jpg",
                            fit: BoxFit.fill,
                          ),
                          "Basil Cafe",
                          "Vidyaratan Nagar"),
                      MyCard(
                          Image.asset(
                            "assets/the-egg-factory.jpg",
                            fit: BoxFit.fill,
                          ),
                          "Egg Factory",
                          "Behind Smriti Bhawan"),
                      MyCard(
                          Image.asset(
                            "assets/manna_rolls.jfif",
                            fit: BoxFit.fill,
                          ),
                          "Manna Rolls",
                          "Near KC"),
                      MyCard(
                          Image.asset(
                            "assets/dollops.jfif",
                            fit: BoxFit.fill,
                          ),
                          "Dollops",
                          "Eswar Nagar"),
                      MyCard(
                          Image.asset(
                            "assets/basil_cafe.jpg",
                            fit: BoxFit.fill,
                          ),
                          "Basil Cafe",
                          "Vidyaratan Nagar"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  MyCard(this.image, this.name, this.des);

  String name;
  String des;
  Image image;

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black26,
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.3,
              child: image,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      color: Colors.black54),
                ),
                Text(
                  des,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
