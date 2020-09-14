import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virtual_manipal/home_page.dart';
var animation="idle";

class TeddyPage extends StatefulWidget {
  @override
  var txt="Buddy";
  _TeddyPageState createState() => _TeddyPageState();
}

class _TeddyPageState extends State<TeddyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.teal,title:Center(child: Text("Virtual Manipal",style: GoogleFonts.balooTammudu(fontSize: MediaQuery.of(context).size.width*0.07),))),
      body: Container(
        color: Colors.teal,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    color: Colors.teal,
                    child: Padding(
                      padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                      child: FlareActor(
                        'assets/teddy.flr',
                        fit: BoxFit.contain,
                        animation: animation,
                      ),
                    )),
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        onChanged: (text){
                          widget.txt=text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Enter Full Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Excited?",
                        style: GoogleFonts.montserrat(
                            fontSize: MediaQuery.of(context).size.width * 0.1,
                            color: Colors.white),
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: FlatButton(
                                onPressed: (){
                                  setState(() {
                                    animation="fail";
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    height: 50,
                                    child: Center(
                                        child: Text("Nahh!",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25)))),
                              )),Expanded(
                              child: FlatButton(
                                onPressed: (){
                                  setState(() {
                                    animation="success";
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green,
                                    ),
                                    height: 50,
                                    child: Center(
                                        child: Text("Yayy!",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25)))),
                              )),

                        ],
                      ),
                    ],
                  ),
                ),
                flex: 1,
              ),Padding(
                padding: EdgeInsets.all(5),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      onPressed:(){ Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage(widget.txt)));},
                      child: Text(
                        "Let's Go!",
                        style: GoogleFonts.balooTammudu(
                            fontSize: MediaQuery.of(context).size.width * 0.07,
                            color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

