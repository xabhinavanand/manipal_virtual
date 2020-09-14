import 'package:google_fonts/google_fonts.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,title:Center(child: Text("Virtual Manipal",style: GoogleFonts.balooTammudu(fontSize: MediaQuery.of(context).size.width*0.07),))),
      body: Container(
        color: Colors.pink,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              color: Colors.pink,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Events",
                        style: GoogleFonts.quicksand(
                            fontSize: MediaQuery.of(context).size.width * 0.1,
                            letterSpacing: 3,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.width * 0.3),
                  ),color: Colors.white
                ),
                child: Center(
                  child: Text(
                    "Coming Soon",
                    style: GoogleFonts.quicksand(
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                        letterSpacing: 3,
                        color: Colors.black38,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
