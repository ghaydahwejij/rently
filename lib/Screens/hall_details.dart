import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/Screens/calendar.dart';
import 'package:rently/provider/hall_db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HallDetails extends StatefulWidget {
  int index;
   HallDetails({Key? key,required this.index}) : super(key: key);

  @override
  State<HallDetails> createState() => _HallDetailsState();
}

class _HallDetailsState extends State<HallDetails> {
  _HallDetailsState();

  @override
  void initState() {
    super.initState();
    context.read<HallProvider>().getHallProvider();
  }


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
  Widget build(BuildContext context) {
    var provider = context.watch<HallProvider>();
    var response = provider.data;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        margin: EdgeInsets.only(top: 30,left: 15,right: 15,bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(4, 8), // Shadow position
            ),
          ],
        ),
        child: Column(
          children:[
            Container(
              child: Expanded(
                child: ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        //1st Image of Slider
                        Container(
                          // margin: EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image:NetworkImage(hall_path+response![widget.index].image1.toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //2nd Image of Slider
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image:NetworkImage(hall_path+response![widget.index].image2.toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //3rd Image of Slider
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image:NetworkImage(hall_path+response![widget.index].image3.toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage("images/h4.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      //Slider Container properties
                      options: CarouselOptions(
                        height: 320.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
            //   child: Image.asset("images/f2.jpg"),
            // ),
            SizedBox(
              height: 10,
            ),
            Image.asset("icons/threedots.png"),
            Text(
            // "قاعة سفن ستارز",
              response![widget.index].title.toString(),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
            height: 10,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Row(
            children: [
            Icon(
            Icons.star,
            color: CupertinoColors.systemYellow,
              size: 20,
            ),
            Icon(
            Icons.star,
            color: CupertinoColors.systemYellow,
              size: 20,
            ),
            Icon(
            Icons.star,
            color: CupertinoColors.systemYellow,
              size: 20,
            ),
            Icon(
    Icons.star,
    color: CupertinoColors.systemYellow,
              size: 20,
    ),
    Icon(
    Icons.star,
    color: CupertinoColors.systemGrey2,
      size: 20,
    ),
    ],
    ),
              Row(
                children: [
                  Text(
                    response![0].location.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.location_pin),
                ],
              )
            ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  response![widget.index].desc1.toString(),
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.chair_alt)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  response![widget.index].desc2.toString(),
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.playlist_add_check)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  response![widget.index].desc3.toString(),
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.local_drink_rounded)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  response![widget.index].desc4.toString(),
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.child_care_sharp)
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: Text(
                    "الأيام المتاحة للحجز",
                    style: TextStyle(fontSize: 18, color:  Color(0xff004504),fontWeight: FontWeight.w600,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                  onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => Calendar(index: widget.index,)));},
                ),
                Icon(Icons.calendar_month_outlined,color: Color(0xff004504),)
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
                    Text(response![widget.index].price.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("لا توجد ملاحظات ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200)),
                Text(": ملاحظات على القاعة",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("13"),
                Image.asset("icons/sad.png"),
                SizedBox(width: 10,),
                Text("84"),
                Image.asset("icons/happy.png"),
                SizedBox(width: 10,),
              ],
            )

          ]

        ),
      ),
    );
  }
}
