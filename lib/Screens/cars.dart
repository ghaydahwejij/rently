import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rently/Screens/cars_home.dart';
import 'package:rently/Screens/houses.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_details.dart';
import 'menu.dart';

class Cars extends StatefulWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {


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
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff004504),
              ), onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => CarsHome()));},
            );
          },
        ),
        backgroundColor: Colors.white,
        actions: [

          GestureDetector(child: Image.asset("images/l.png"),
          onTap:()
          {Navigator.push(context,MaterialPageRoute(builder: (context) => Menu()));},),
          SizedBox(width: 15,),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){ showAlertDialog(context);},
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffD9F0DB),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(2, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Image.asset("icons/kia.png",width: 20),
                  ),
                ),
                GestureDetector(
                  onTap: (){ showAlertDialog(context);},
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffD9F0DB),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(2, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Image.asset("icons/toyo.png",width: 100),
                  ),
                ),
                GestureDetector(
                  onTap: (){ showAlertDialog(context);},
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffD9F0DB),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(2, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Image.asset("icons/ferari.png"),
                  ),
                ),
                GestureDetector(
                  onTap: (){ showAlertDialog(context);},
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffD9F0DB),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(2, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Image.asset("icons/bmw.png"),
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 230,
                  width: 270,
                  decoration: BoxDecoration(
                    color:Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/c1.png",width: 210),
                      Text("Ferrari - VGR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("200 LD", style: TextStyle(fontSize: 20),),
                                  Text("إيجار لمدة 12 ساعة",)
                                ],
                              ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 230,
                  width: 270,
                  decoration: BoxDecoration(
                    color:Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/c2.png",width: 210),
                      Text("KIA - Overshot",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("500 LD", style: TextStyle(fontSize: 20),),
                              Text("إيجار لمدة 24 ساعة",)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 250,
                  width: 270,
                  decoration: BoxDecoration(
                    color:Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/c3.png",width: 190),
                      Text("Kia - EDWARD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("150 LD", style: TextStyle(fontSize: 20),),
                              Text("إيجار لمدة 12 ساعة",)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 250,
                  width: 270,
                  decoration: BoxDecoration(
                    color:Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/c4.png",width: 190),
                      Text("Toyota - Mr",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1000 LD", style: TextStyle(fontSize: 20),),
                              Text("إيجار لمدة 24 ساعة",)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("قيد التطوير :)"),
    content: Text("سيتمّ إتاحة ميزة الفرز حسب نوع السيارة قريبا."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
