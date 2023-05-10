import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Fav extends StatelessWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: [
              GestureDetector(child: Image.asset("images/l.png"),
                onTap:()
                {Navigator.push(context,MaterialPageRoute(builder: (context) => Menu()));},),
              SizedBox(width: 15,),
            ],
          ),
          body:  Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x61000000),
                      blurRadius: 4,
                      offset: Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:55.0,bottom: 15),
                                    child: Row(
                                      children: [
                                        Image.asset("images/heart.png",width: 30,),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          "images/h1.png",
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Divider(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 83.0),
                                        child: Text("طرابلس ليبيا"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("3 غرف وحمامين وصالة كبيرة  "),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("images/stars.png"),
                                        SizedBox(width: 11),
                                        Text(
                                          " شهر | 140 دل  ",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                        SizedBox(height: 10,),
                        Divider(),
                        SizedBox(height: 10,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:55.0,bottom: 15),
                                    child: Row(
                                      children: [
                                        Image.asset("images/heart.png",width: 30,),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          "images/h1.png",
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Divider(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 83.0),
                                        child: Text("طرابلس ليبيا"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("3 غرف وحمامين وصالة كبيرة  "),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("images/stars.png"),
                                        SizedBox(width: 11),
                                        Text(
                                          " شهر | 140 دل  ",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                        SizedBox(height: 10,),
                        Divider(),
                        SizedBox(height: 10,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:55.0,bottom: 15),
                                    child: Row(
                                      children: [
                                        Image.asset("images/heart.png",width: 30,),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          "images/h1.png",
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Divider(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 83.0),
                                        child: Text("طرابلس ليبيا"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("3 غرف وحمامين وصالة كبيرة  "),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("images/stars.png"),
                                        SizedBox(width: 11),
                                        Text(
                                          " شهر | 140 دل  ",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                        SizedBox(height: 10,),
                        Divider(),
                        SizedBox(height: 10,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:55.0,bottom: 15),
                                    child: Row(
                                      children: [
                                        Image.asset("images/heart.png",width: 30,),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          "images/h1.png",
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Divider(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 83.0),
                                        child: Text("طرابلس ليبيا"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("3 غرف وحمامين وصالة كبيرة  "),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("images/stars.png"),
                                        SizedBox(width: 11),
                                        Text(
                                          " شهر | 140 دل  ",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                        SizedBox(height: 10,),
                        Divider(),
                        SizedBox(height: 10,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:55.0,bottom: 15),
                                    child: Row(
                                      children: [
                                        Image.asset("images/heart.png",width: 30,),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      ClipOval(
                                        child: Image.asset(
                                          "images/h1.png",
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Divider(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 83.0),
                                        child: Text("طرابلس ليبيا"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("3 غرف وحمامين وصالة كبيرة  "),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("images/stars.png"),
                                        SizedBox(width: 11),
                                        Text(
                                          " شهر | 140 دل  ",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                        SizedBox(height: 10,),
                        Divider(),
                        SizedBox(height: 10,),

                      ],
                    ),
                  ),
                ),

              ),
            ),

    );
  }
}
