import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'teddy_page.dart';
BuildContext Context;
var animation = "idle";
var textNode;
var pages = [
  Container(
    color: Colors.blueAccent,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Lottie.asset('assets/20942-hello-boy.json'),
                )),
            flex: 2,
          ),
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Hello!",
                  style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(Context).size.width * 0.2,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2),
                ),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
                child: Column(
              children: <Widget>[
                Text(
                  "Abhinav Here!",
                  style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(Context).size.width * 0.1,
                      color: Colors.white),
                ),
                Text(
                  "How Have You Been?",
                  style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(Context).size.width * 0.07,
                      color: Colors.white),
                ),
              ],
            )),
            flex: 1,
          )
        ],
      ),
    ),
  ),
  Container(
    color: Colors.red,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                color: Colors.red,
                child: Center(
                    child: Lottie.asset('assets/crying_face.json',
                        fit: BoxFit.contain))),
            flex: 2,
          ),
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Missing Manipal?",
                  style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(Context).size.width * 0.09,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2),
                ),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
                child: Column(
              children: <Widget>[
                Text(
                  "Wondering How Long Will",
                  style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(Context).size.width * 0.060,
                      color: Colors.white),
                ),
                Text(
                  "It Take To Go Back Home?",
                  style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(Context).size.width * 0.06,
                      color: Colors.white),
                ),
              ],
            )),
            flex: 1,
          ),
        ],
      ),
    ),
  ),
  Container(
    color: Colors.green,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                color: Colors.green,
                child: Center(
                    child: Lottie.asset('assets/party.json',
                        fit: BoxFit.contain))),
            flex: 2,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome To ",
                      style: GoogleFonts.montserrat(
                          fontSize: MediaQuery.of(Context).size.width * 0.08,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 2),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Virtual Manipal !",
                      style: GoogleFonts.montserrat(
                          fontSize: MediaQuery.of(Context).size.width * 0.08,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 2),
                    ),
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
                child: Column(
              children: <Widget>[
                Text(
                  "Let's Relive the Moments",
                  style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(Context).size.width * 0.060,
                      color: Colors.white),
                ),
                Text(
                  "Once Again !",
                  style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(Context).size.width * 0.06,
                      color: Colors.white),
                ),
              ],
            ),),
            flex: 1,
          ),FlatButton(
            onPressed: (){
              Navigator.push(Context, MaterialPageRoute(builder: (context)=>TeddyPage()));
            },
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Next",
                  style: GoogleFonts.balooTammudu(
                      fontSize: MediaQuery.of(Context).size.width * 0.07,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
];

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  build(BuildContext context) {
    Context = context;
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: false,
        fullTransitionValue: 500,
        enableSlideIcon: true,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}
