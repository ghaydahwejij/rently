import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/Screens/houses.dart';
import 'package:rently/provider/house_db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'houses.dart';
import 'houses.dart';
import 'main.dart';

class HomeDetails extends StatefulWidget {
  int index;
   HomeDetails({Key? key,required this.index}) : super(key: key);

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  _HomeDetailsState();

  @override
  void initState() {
    super.initState();
    context.read<HouseProvider>().getHouseProvider();
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
    var provider = context.watch<HouseProvider>();
    var response = provider.data;

    return Scaffold(
        body:Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0,bottom: 450),
                  child: Container(
                    height: 265,
                      width: double.infinity,
                      child: Image.network("$house_path"+response![widget.index].image3.toString())),
                ),
                Padding(padding: EdgeInsets.only(top: 15,left: 10,right: 350),
                child:
                    IconButton(icon: const Icon(Icons.arrow_circle_left_rounded,color: Colors.white,
                    size: 30,),
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => NavBar() ));
                      } ,)
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0,top: 240),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(-2, -4), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          // "منزل كبير - دوبلكس",
                          response![widget.index].title.toString(),
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              response![widget.index].location.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.location_pin),
                            SizedBox(width: 20,)
                          ],
                        ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                               response![widget.index].desc1.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.bed_rounded)
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                response![widget.index].desc2.toString(),
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
                                response![widget.index].desc3.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.bathtub_outlined)
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                response![widget.index].desc4.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.bedroom_baby_rounded)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(response![widget.index].feature1.toString(),style: TextStyle(fontSize: 16),),
                                Text(response![widget.index].feature2.toString(),style: TextStyle(fontSize: 16),),
                                Text(response![widget.index].feature3.toString(),style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            SizedBox(width: 30,)
                          ],
                        ),
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
                                Text(response![widget.index].price.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text("16",style: TextStyle(fontSize: 14),),
                                SizedBox(width: 5,),
                                Image.asset("icons/sad.png"),
                                SizedBox(width: 15),
                                Text("120",style: TextStyle(fontSize: 16),),
                                SizedBox(width: 5,),

                                Image.asset("icons/happy.png"),
                                SizedBox(width: 10,),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: CupertinoColors.systemYellow,
                                ),
                                Text("4.8k",style: TextStyle(fontSize: 18),)
                            ]),
                            Text("لمدة 6 أشهر", style: TextStyle(fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text(
                              "الاطّلاع على صور المنزل",
                              style: TextStyle(fontSize: 16, color:  Color(0xff004504),fontWeight: FontWeight.w400,),
                            ),
                            Icon(Icons.photo,color: Color(0xff004504),)
                          ],
                        ),

                      ],),
                  ),
                )
              ],
            ),
          ],
        ),
      );
  }
}
