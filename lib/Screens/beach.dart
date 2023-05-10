import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/Screens/beach_details.dart';
import 'package:rently/provider/beach_db_provider.dart';

import 'flats.dart';
import 'halls.dart';
import 'houses.dart';
import 'menu.dart';

class Beach extends StatefulWidget {
  const Beach({Key? key}) : super(key: key);

  @override
  State<Beach> createState() => _BeachState();
}

class _BeachState extends State<Beach> {
  @override
  void initState() {
    super.initState();
    context.read<BeachProvider>().getBeachProvider();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<BeachProvider>();
    var response = provider.data;

    return  Scaffold(
          // extendBodyBehindAppBar: true,
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
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
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
          body: Column(
            children: [
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownList(),
                  DropdownPeople(),
                  Image.asset("icons/line.jpg"),
                  Column(
                    children: [
                      Image.asset(
                        "icons/b1.jpg",
                        width: 25,
                      ),
                      Text(
                        " على البحر",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "icons/b2.jpg",
                        width: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          " حوض السباحة",
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                width: 310,
                height: 45,
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
                    return  GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BeachDetails(index: index,),
                          ),
                        );
                      },
                      child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 100.0,left: 30),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  b_path+response![index].image1.toString(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x61000000),
                                      blurRadius: 4,
                                      offset: Offset(0, 4), // Shadow position
                                    ),
                                  ],
                                ),
                                width: 183,
                                height: 135,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          response[index].title.toString(),
                                          style: TextStyle(
                                              fontSize: 15, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          response[index].price.toString(),
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(response[index].desc2.toString(),
                                            style: TextStyle(
                                              fontSize: 15,
                                            )),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          response[index].sea.toString(),
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
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
                                  ],
                                ),
                              ),
                            )
                          ]),
                    );},
                    separatorBuilder:  (context, index) => const SizedBox(height: 25),
                    itemCount: response.length,
                ),
                ),

            ],
          ),
    );
  }
}

//==============================================================
const List<String> people = <String>['5', '+10', '3', '1'];
String? num;

class DropdownPeople extends StatefulWidget {
  const DropdownPeople({Key? key}) : super(key: key);

  @override
  State<DropdownPeople> createState() => _DropdownPeopleState();
}

class _DropdownPeopleState extends State<DropdownPeople> {
  @override
  String dropdownValue = floors.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
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
        ),
        child: DropdownButton<String>(
          hint: Text(" الأشخاص",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,fontFamily: "Cairo",
                  fontSize: 14)),
          elevation: 16,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          value: num,
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              num = value!;
            });
          },
          items: people.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

