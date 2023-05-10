import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/provider/flat_db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class FlatsDetails extends StatefulWidget {
  int index;
   FlatsDetails({Key? key,required this.index}) : super(key: key);

  @override
  State<FlatsDetails> createState() => _FlatsDetailsState();
}

class _FlatsDetailsState extends State<FlatsDetails> {
  _FlatsDetailsState();

  @override
  void initState() {
    super.initState();
    context.read<FlatProvider>().getFlatProvider();
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

    var provider = context.watch<FlatProvider>();
    var response = provider.data;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          image: NetworkImage("$flat_path"+response![widget.index].image1.toString()),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          image: NetworkImage("$flat_path"+response![widget.index].image2.toString()),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          image: NetworkImage("$flat_path"+response![widget.index].image3.toString()),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  //Slider Container properties
                  options: CarouselOptions(
                    height: 300.0,
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
          SizedBox(
            height: 10,
          ),
          Image.asset("icons/threedots.png"),
          Text(
            response[widget.index].title.toString(),
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
                    response[widget.index].location.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.location_pin),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                // "ثلاثة غرف، صالة، حمام و شُرفة مُطلّة على البحر",
                response[widget.index].details.toString(),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    response[widget.index].desc1.toString(),
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("icons/flats.png")
                ],
              ),
              Row(
                children: [
                  Text(
                    response[widget.index].desc2.toString(),
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("icons/sofa.png")
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    response[widget.index].desc3.toString(),
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("icons/left.png")
                ],
              ),
              Row(
                children: [
                  Text(
                    response[widget.index].desc4.toString(),
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("icons/airc.png")
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
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
                  Text("د.ل شهريا", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text(response[widget.index].price.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("لا توجد ملاحظات ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200)),
              Text(": ملاحظات على الشقة",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("13"),
              Image.asset("icons/sad.png"),
              SizedBox(width: 10,),
              Text("84"),
              Image.asset("icons/happy.png"),
              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 60,)

        ],
      ),
    );
  }
}
