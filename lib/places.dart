import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virtual_manipal/start_page.dart';
import 'places_info.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
class PlacesPage extends StatefulWidget {
  final placeinfo = [
    new PlaceInfo(
        'Arbi Falls',
        Image.asset(
          "assets/images/Arbi falls.jpg",
          fit: BoxFit.fill,
        ),
        "This pretty little falls is located on the outskirts of Manipal. During monsoons the water gushes down this collection of rocks which lead into a forest area. It is pretty dry during summers but during the rainy season or post monsoon, when the water is flowing in gusto, it is an ideal place to spend your noon at. Take a dip, take a selfie. Its all yours!\n\n"
            "Distance from Manipal – 2 kms\nMost convenient mode of commute – Walk"),
    new PlaceInfo(
        'Hoode Beach',
        Image.asset(
          "assets/images/Hoode_Beach.jpg",
          fit: BoxFit.fill,
        ),
        "This is the perfect place for you if you enjoy lazy, solitary walks along a beach. The place is practically deserted most of the time. No idea why. There are a lot of water sports you can indulge in out here and it also has a bunch of shacks scattered across the beach. It also has a lot of stray dogs, for some reason, so be wary of where you step to avoid that gooey, spongy and (eventually) repulsive sensation underneath your foot.\n\nDistance from Manipal – 12 kms\n\nMost convenient mode of commute – Bus"),
    new PlaceInfo(
        'Kaup Beach',
        Image.asset(
          "assets/images/Kaup_beach.jpg",
          fit: BoxFit.fill,
        ),
        "It’s pronounced “Kapu”. I kid you not. It’s a relatively less crowded beach and features a cool lighthouse which was built by the British in 1901. The lighthouse is 89 feet high and has a range of 24 nautical miles (which is around 27 regular miles, which is around 9 leagues. That reminds me, read the book 20,000 Leagues Under the Sea by Jules Verne if you haven’t already. It’s really cool. I digress. Let’s get back to the article). None of these facts will affect your trip to Kaup in any way. They’re just fun to know. You’ll have a great time there though, if you’re a beach person.Besides the lighthouse, Kaup also has ruins of Jain Basadis that line across the stretch of sand and it also has two Hindu temples dedicated to the Goddess Mariamman. If you intend to explore the beach, you might want to watch out for the crabs if you’re venturing into the darker, siltier side of the beach. They’re sneaky and inconspicuous, so you won’t notice them until you really notice them, and the fact that they’re everywhere. Stick to the more populated side of the beach and you’ll be just fine.\n\nDistance from Manipal – 17kms\n\nMost convenient mode of commute – Bus"),
    new PlaceInfo(
        'Hanging Bridge',
        Image.asset(
          "assets/images/hanging_bridge.jpg",
          fit: BoxFit.fill,
        ),
        "The quintessential hangout for the avid bicycle enthusiast in Manipal, this bridge is located a mere few kilometers away from Manipal and is the one place to visit when you’re in the mood for a fun ride, but not in the mood for spending any money.It’s located atop a small backwater channel. This is the ideal spot for those who wish to enjoy the beauty of nature away from the hustle and bustle of a city.To be fair, you could just do that within literally anywhere in Manipal itself that isn’t a part of the University, but hey, travelling is fun!\n\nDistance from Manipal – 13.5 kms\n\nMost convenient mode of commute – Motorbike/Bicycle."),
    new PlaceInfo(
        'Agumbe',
        Image.asset(
          "assets/images/agumbe.jpg",
          fit: BoxFit.fill,
        ),
        "Located at a comfortable distance of around 45 kilometers from Manipal, the trip to Agumbe is in itself a joyous experience filled with beautiful vistas of Karnataka’s forest regions. The various stops along the way, which include Sunset Point, a temple and numerous waterfalls(Onaki Abbi, Barkana falls and Jogigundi falls), make the journey to Agumbe a rather eventful one. It is one of the highest peaks of the Western Ghats and receives the most amount of rainfall in all of Karnataka!Once you get there, there’s a lot of trekking to do should you choose to do so, which, given the fact that it rains every hour or so, is quite an exhilarating experience. If you’re lucky enough to be there during the sunset, you’ll be a witness to one of the most breathtaking vistas this amazing state has to offer.Kudlu FallsA really cool fact about the Agumbe is that Malgudi Days, a television series based on the collection of short stories by R.K. Narayan was shot over there! A much cooler fact about Agumbe is that the make-believe town of Malgudi actually exists! The best part about this is that the house where most of the series was shot is still there. It’s owned by a kind lady whom everyone lovingly calls Kasturi Akka. You can knock on her door and they’ll greet you with the warmth and hospitality usually tendered to a long lost kin, complete with the delicious local food served on banana leaves. Getting to explore the 120 year old house where it all happened is an added bonus.\n\nDistance from Manipal – 45 kms\n\nMost convenient mode of commute – Car "),
    new PlaceInfo(
        'Turtle Bay',
        Image.asset(
          "assets/images/turtlebay.jpg",
          fit: BoxFit.fill,
        ),
        "This is a beach resort, so it’s perfect for you if you’re okay with spending a bit of money on your little trip outside Manipal. This is a place where you go about your clichéd beach holiday activities, like going on long walks along the beach whilst absorbing the breathtaking scenery, snorkeling and scuba diving.Here’s what’s interesting about the place,though: it gets its name from the turtles that frequent this region during their nesting season of October to December. So if you want to catch a glimpse of the turtles, that’s the time to visit them. But, for the sake of all that is sacred, do not disturb them. Live and let live. Or in this case, live and let turtles breed and raise young in peace.\n\nDistance from Manipal – 15 kms\n\nMost convenient mode of commute – Car "),
    new PlaceInfo(
        'Student Plaza',
        Image.asset(
          "assets/images/Student Plaza.JPG",
          fit: BoxFit.fill,
        ),
        "Student Plaza greets new comers, ‘KC’ makes way for ‘SP’.TheStudent Plaza at MIT came alive on July 16, 2018, in time to greet the new batch of students. Although a little work remains to be completed, the musical fountain was made operational to give the parents and the new comers an idea of this new addition on the campus. It will be the hang-out for a lot many students, as, after the shops are all occupied, the Plaza will cater to their needs.There will ATM, pharmacy, coffee/ice cream and fresh juice, general stores, fruits and vegetable stores, shop for milk products, bakery, mobile, computer service centres, sports shop, tailors and others. The plaza will have a ground and first floors. Vinayak Srivastava from Lucknow got admission to three other engineering colleges but preferred MIT."),
    new PlaceInfo(
        'Malpe Beach',
        Image.asset(
          "assets/images/Malpe beach.jpg",
          fit: BoxFit.fill,
        ),
        "Ah, now we finally arrive at the local haunts of everyday Manipal students who aren’t really in the mood for much adventure, but still want to have a good time. The beaches. There are plenty of them around Manipal, and Malpe is the most commercialized of them all. It’s usually quite crowded and especially so on Saturday Nights. It’s the closest beach you can get to around Manipal.It also has water sports like parasailing and jet-skis among others. Lots of local shops out there sell cheap street food. But between you and me, I’d advise you stay away from the golas out there. They’re nothing like what golas are actually supposed to taste like, and you deserve better than that. Recently, it became the very first beach in India with free WiFi for 30 minutes for each user (available at 4G speeds), courtesy of BSNL, so people can finally be glued to their phones even while at the beach. What a time to be alive.\n\nDistance from Manipal – 12 kms\n\nMost convenient mode of commute – auto rickshaw, bus."),
  ];

  Widget buildButtomSheet(BuildContext context, int index) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.07),
                child: Align(
                  child: Text(
                    placeinfo[index].name,
                    style: GoogleFonts.balooTammudu(
                        fontSize: MediaQuery.of(context).size.width * 0.11,
                        letterSpacing: 1.5,
                        color: Color(0xff010328),
                        fontWeight: FontWeight.w100),
                  ),
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.07),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description",
                      style:
                          GoogleFonts.roboto(fontSize: 30, color: Colors.black),
                    ))),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black45,
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.07,
                    endIndent: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.07),
                        child: Text(
                          placeinfo[index].des,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05),
                        ),
                      ),
                    ),
                  )),
                  Divider(
                    color: Colors.black45,
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.07,
                    endIndent: MediaQuery.of(context).size.width * 0.07,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  _PlacesPageState createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo,title:Center(child: Text("Virtual Manipal",style: GoogleFonts.balooTammudu(fontSize: MediaQuery.of(context).size.width*0.07),))),
    body: Container(
    color: Colors.indigo,
    child: Column(
    children: <Widget>[
    Expanded(
    child: Container(
    color: Colors.indigo,
    child: Align(
    alignment: Alignment.centerLeft,
    child: Padding(
    padding: EdgeInsets.only(left: 20),
    child: Text(
    "Places",
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
    flex: 3,
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(
    MediaQuery.of(context).size.width * 0.3)),
    ),
    child: Padding(
    padding: EdgeInsets.symmetric(
    vertical: MediaQuery.of(context).size.height * 0.12),
    child: Swiper(
    itemCount: widget.placeinfo.length,
    itemWidth: MediaQuery.of(context).size.width * 0.8,
    containerHeight: MediaQuery.of(context).size.width * 0.8,
    layout: SwiperLayout.STACK,
    pagination: SwiperPagination(
    builder: DotSwiperPaginationBuilder(
    activeColor: Colors.indigo,
    size: 15,
    activeSize: 20)),
    itemBuilder: (context, index) {
    return InkWell(
    onTap: () {
    showModalBottomSheet(
    context: context,
    builder: (context) =>
    widget.buildButtomSheet(context, index));
    },
    child: Stack(
    children: <Widget>[
    Column(
    children: <Widget>[
    Row(
    children: <Widget>[
    SizedBox(
    width: MediaQuery.of(context).size.width *
    0.07,
    ),
    Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32),
    ),
    color: Colors.white,
    child: Column(
    children: <Widget>[
    Container(
    decoration: BoxDecoration(
    borderRadius:
    BorderRadius.circular(32)),
    height: MediaQuery.of(context)
        .size
        .width *
    0.7,
    width: MediaQuery.of(context)
        .size
        .width *
    0.7,
    child: Stack(
    children: <Widget>[
    Container(
    decoration: BoxDecoration(
    borderRadius:
    BorderRadius.circular(
    32)),
    child: widget
        .placeinfo[index].image,
    height: MediaQuery.of(context)
        .size
        .width *
    0.7,
    width: MediaQuery.of(context)
        .size
        .width *
    0.7,
    ),
    Padding(
    padding:
    EdgeInsets.only(left: 10),
    child: Align(
    child: Row(
    children: <Widget>[
    Text(
    widget
        .placeinfo[index]
        .name,
    style: GoogleFonts.balooTammudu(
    fontSize: MediaQuery.of(
    context)
        .size
        .width *
    0.08,
    color:
    Colors.white),
    ),
    ],
    ),
    alignment:
    Alignment.bottomLeft,
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ],
    ),
    ],
    ),
    );
    },
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
