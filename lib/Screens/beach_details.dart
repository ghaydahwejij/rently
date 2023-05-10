import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/Screens/home_details.dart';
import 'package:rently/provider/beach_db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'houses.dart';

class BeachDetails extends StatefulWidget {
  int index;
   BeachDetails({Key? key,required this.index}) : super(key: key);

  @override
  State<BeachDetails> createState() => _BeachDetailsState();
}

class _BeachDetailsState extends State<BeachDetails> {
  _BeachDetailsState();


  Future<void> _launchUrl(String url ) async {
    final Uri uri= Uri(scheme:"https",path: url);
    if (!await launchUrl (
      uri,
      mode:LaunchMode.externalApplication,
    )){
      throw Exception('Could not launch ');
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<BeachProvider>().getBeachProvider();
  }

  @override
  Widget build(BuildContext context) {

    var provider = context.watch<BeachProvider>();
    var response = provider.data;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: ListView(
            children: [
              CarouselSlider(items:[
                Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) ),
                  image: DecorationImage(
                    image: NetworkImage(b_path+response![widget.index].image1.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) ),
                    image: DecorationImage(
                      image: NetworkImage(b_path+response![widget.index].image2.toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) ),
                    image: DecorationImage(
                      image: NetworkImage(b_path+response![widget.index].image3.toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  ]
                , options:
                CarouselOptions(
                  height: 350.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1,
                ),)
            ],
          )),
          SizedBox(
            height: 5,
          ),
          Image.asset("icons/threedots.png"),
          Text(
            response![widget.index].title.toString(),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: CupertinoColors.systemYellow,
                  ),
                  Icon(
                    Icons.star,
                    color: CupertinoColors.systemYellow,
                  ),
                  Icon(
                    Icons.star,
                    color: CupertinoColors.systemYellow,
                  ),
                  Icon(
                    Icons.star,
                    color: CupertinoColors.systemGrey2,
                  ),
                  Icon(
                    Icons.star,
                    color: CupertinoColors.systemGrey2,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "القره بوللي",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.location_pin),
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 18,),
                  Text(/*"يبعد عن البحر 1 كم"*/ response![widget.index].sea.toString())
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    response![widget.index].desc1.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Image.asset("icons/flats.png")
                  Icon(Icons.beach_access_rounded),
                  SizedBox(width: 30,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    response![widget.index].desc2.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Image.asset("icons/flats.png")
                  Icon(Icons.bed_rounded),
                  SizedBox(width: 30,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    response![widget.index].desc3.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Image.asset("icons/flats.png")
                  Icon(Icons.balcony),
                  SizedBox(width: 30,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    response![widget.index].desc4.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // Image.asset("icons/flats.png")
                  Icon(Icons.bathtub_outlined),
                  SizedBox(width: 30,)
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DecoratedBox(
                    position: DecorationPosition.background,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xff88ab88),
                          Color(0xff004504),
                        ]),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.30), blurRadius: 5)
                        ]),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)))),
                      onPressed: () {
                        _launchUrl("store.pay.net.ly/tdi/yvL6JY0K2ByEMvnqYxQDe75awRNmzrQoM04pj8WJbLlP036Xd1OVZ9ogG1ZM7m5Q");
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          "! احجز الآن",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("د.ل لليوم", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text( response![widget.index].price.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الأيام المتاحة للحجز",
                    style: TextStyle(fontSize: 18, color:  Color(0xff004504),fontWeight: FontWeight.w600,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                  Icon(Icons.calendar_month_outlined,color: Color(0xff004504),)
                ],
              ),
              SizedBox(height: 30,)
            ],
          )
        ],
      ),
    );
  }
}
