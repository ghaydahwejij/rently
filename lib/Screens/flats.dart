import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/Screens/flat_details.dart';
import 'package:rently/provider/flat_db_provider.dart';

import 'LoginScreen.dart';
import 'LogoScreen.dart';
import 'halls.dart';
import 'houses.dart';
import 'menu.dart';

class Flats extends StatefulWidget {
  const Flats({Key? key}) : super(key: key);

  @override
  State<Flats> createState() => _FlatsState();
}

class _FlatsState extends State<Flats> {

  @override
  void initState() {
    super.initState();
    context.read<FlatProvider>().getFlatProvider();
  }

  String dropdownValue = "المدينة";
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<FlatProvider>();
    var response = provider.data;

    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff004504),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
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
        drawer: NavDrawer(),

        body: Container(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownList(),
                    Image.asset("icons/line.jpg"),
                    Column(
                      children: [
                        Image.asset("icons/unfu.jpg"),
                        Text(
                          "غير مفروش",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("icons/fu.jpg"),
                        Text(
                          " مفروش",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Image.asset("icons/line.jpg"),
                    Column(
                      children: [
                        Image.asset("icons/shared.jpg"),
                        Text(
                          "مشترك",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("icons/single.jpg"),
                        Text(
                          " فردي",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                width: 310,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff1E5B22),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x61000000),
                        blurRadius: 4,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButtonSdate(),
                        DropdownButtonSdate(),
                        DropdownButtonExample(),
                      ]),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              response==null?
              const Center(child: CircularProgressIndicator())
                  :
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context,index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: SizedBox(
                        //  width: 200,
                        height: 300,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FlatsDetails(index: index,),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x61000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4), // Shadow position
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(height: 12,),
                                Container(
                                  width: 284,
                                  height: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(top:Radius.circular(20) )
                                  ),
                                  child: Image.network(
                                    "$flat_path${response[index].image1}",
                                    width: 284,
                                    height: 172,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                          ],
                                        ),
                                        Text(response[index].title.toString(),
                                            style: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 16,
                                                fontFamily: 'Cairo')),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(response[index].location.toString(),
                                            style: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 14,
                                                fontFamily: 'Cairo')),

                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Text("د.ل شهريا", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                            Text(response[index].price.toString(),
                                                style: TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 16,
                                                    fontFamily: 'Cairo',
                                                    fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                        Text(response[index].location.toString(),
                                            style: TextStyle(
                                                color: Color(0xff000000),
                                                fontSize: 14,
                                                fontFamily: 'Cairo')),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ); },
                  separatorBuilder:  (context, index) => const SizedBox(height: 16),
                  itemCount: response.length,
                ),
              ),

            ],
          ),
        ),
        // bottomNavigationBar: NavBar() ,
      );
  }
}

//==================================================================

const List<String> floors = <String>['الاول', 'الثاني', 'الثالث', 'أرضي'];
String? floor;

class DropdownList extends StatefulWidget {
  const DropdownList({Key? key}) : super(key: key);

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String dropdownValue = floors.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 33,
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
      child: Padding(
        padding: const EdgeInsets.only(
          top: 0.0,
          left: 5.0,
        ),
        child: DropdownButton<String>(
          hint: Text("الدور",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                  fontSize: 16)),
          elevation: 16,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 0.1,
            color: Colors.white,
          ),
          alignment:Alignment.center,
          value: floor,
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              floor = value ?? "";
            });
          },
          items: floors.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.grey,fontFamily: "Cairo",fontSize: 15,fontWeight: FontWeight.bold),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

//============================================================


