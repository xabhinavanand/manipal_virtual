import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virtual_manipal/places.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'restraunt_page.dart';
import 'events_page.dart';

class HomePage extends StatelessWidget {
  @override
  HomePage(this.txt);
  String txt;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,title:Center(child: Text("Virtual Manipal",style: GoogleFonts.balooTammudu(fontSize: MediaQuery.of(context).size.width*0.07),))), body: Container(
        color: Colors.teal,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              color: Colors.teal,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Welcome,",
                        style: GoogleFonts.quicksand(
                            fontSize: MediaQuery.of(context).size.width * 0.1,
                            letterSpacing: 3,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        txt,
                        style: GoogleFonts.quicksand(
                            fontSize: MediaQuery.of(context).size.width * 0.1,
                            letterSpacing: 3,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            )),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.width * 0.3),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Where Do You Wanna Go?",
                          style: GoogleFonts.quicksand(
                              fontSize: MediaQuery.of(context).size.width * 0.1,
                              letterSpacing: 3,
                              color: Colors.black38,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32),
                                    bottomRight: Radius.circular(32)),
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PlacesPage()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Let's Explore Places",
                                        style: GoogleFonts.quicksand(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            letterSpacing: 1,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32),
                                    bottomRight: Radius.circular(32)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RestrauntPage()));
                                      },
                                      child: Text(
                                        "Let's Eat Something",
                                        style: GoogleFonts.quicksand(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            letterSpacing: 1,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32),
                                    bottomRight: Radius.circular(32)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: FlatButton(
                                      onPressed: (){
                                       Navigator.push(context,MaterialPageRoute(builder: (context)=>EventPage()));
                                      },
                                      child: Text(
                                        "Events In Manipal",
                                        style: GoogleFonts.quicksand(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            letterSpacing: 1,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
