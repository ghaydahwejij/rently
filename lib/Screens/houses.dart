// import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/provider/house_db_provider.dart';

import 'LoginScreen.dart';
import 'LogoScreen.dart';
import 'halls.dart';
import 'home_details.dart';
import 'menu.dart';

class Houses extends StatefulWidget {
  const Houses({Key? key}) : super(key: key);

  @override
  State<Houses> createState() => _HousesState();
}

class _HousesState extends State<Houses> {

  @override
  void initState() {
    super.initState();
    context.read<HouseProvider>().getHouseProvider();
  }

  String dropdownValue = "المدينة";
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<HouseProvider>();
    var response = provider.data;

    return   Scaffold(
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
                   // shrinkWrap: true,
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
                              builder: (context) => HomeDetails(index: index,),
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
                                    "$house_path${response[index].image1}",
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
                                        Text(response[index].feature1.toString(),
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
                )

              ],
            ),
          ),
          // bottomNavigationBar: NavBar() ,
        );
  }
}

//=============================================================

const List<String> list = <String>['طرابلس', 'بنغازي', 'مصراتة', 'صبراتة'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

String? _selectedItem1;

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DropdownButton<String>(
        hint: Text("المدينة", style: TextStyle(color: Colors.white,fontFamily: "Cairo",fontWeight: FontWeight.bold)),
        icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 1,
          color: Color(0xff1E5B22),
        ),
        value: _selectedItem1,
    onChanged: (String? value) => setState(() {
    _selectedItem1 = value ?? "";
    }),
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.grey,fontFamily: "Cairo",fontSize: 15,fontWeight: FontWeight.bold),
            ),
          );
        }).toList(),
      ),
    );
  }
}

//==================================================================

const List<String> Sdate = <String>['6 - 2023', '7 - 2023', '8 - 2023', '9 - 2023',
  '10 - 2023', '11 - 2023', '12 - 2023', '1 - 2024', '2 - 2024', '3 - 2024', '4 - 2024', '5 - 2024'];

class DropdownButtonSdate extends StatefulWidget {
  const DropdownButtonSdate({super.key});

  @override
  State<DropdownButtonSdate> createState() => _DropdownButtonSdateState();
}

String? _selectedItem2;

class _DropdownButtonSdateState extends State<DropdownButtonSdate> {
  String dropdownValue = Sdate.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DropdownButton<String>(
        hint: Text("التاريخ", style: TextStyle(color: Colors.white,fontFamily: "Cairo",fontWeight: FontWeight.bold)),
        icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 1,
          color: Color(0xff1E5B22),
        ),
        value: _selectedItem2,
        onChanged: (String? value) => setState(() {
          _selectedItem2 = value ?? "";
        }),
        items: Sdate.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.grey,fontFamily: "Cairo",fontSize: 15,fontWeight: FontWeight.bold),
            ),
          );
        }).toList(),
      ),
    );
  }
}







