import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/provider/hall_db_provider.dart';

import 'beach.dart';
import 'flats.dart';
import 'hall_details.dart';
import 'houses.dart';
import 'menu.dart';

class HallsScreen extends StatefulWidget {
  const HallsScreen({Key? key}) : super(key: key);

  @override
  State<HallsScreen> createState() => _HallsScreenState();
}

class _HallsScreenState extends State<HallsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HallProvider>().getHallProvider();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<HallProvider>();
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropdownButtonSdate(),
                    DropdownButtonExample(),
                  ]),
            ),
          ),
          response==null?
          const Center(child: CircularProgressIndicator())
              :
              Expanded(
                child: ListView.separated(itemBuilder:(context,index)
                {return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HallDetails(index: index,),
                      ),
                    );
                  },
                  child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0, left: 20),
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
                            width: 300,
                             height: 135,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      response[index].title.toString(),
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      response[index].location.toString(),
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 15,)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(response[index].price.toString(),
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    SizedBox(width: 40,),
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
                                    SizedBox(width: 15,)
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 240.0,left: 20),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                              hall_path+response[index].image1.toString(),
                            ),
                          ),
                        ),
                      ]),
                );}
                    , separatorBuilder: (context, index) => const SizedBox(height: 25),
                    itemCount: response.length),
              )
        ],
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Drawer(
        shadowColor: Colors.grey,
        backgroundColor: Color(0xffE9FAEA),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
              topLeft: Radius.circular(40)),
        ),
        width: 150,
        child: ListView(
          padding: EdgeInsets.only(top: 20.0),
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.home,
                size: 20,
              ),
              title: Text(
                'المنازل',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Houses(),
                  ),
                )
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.maps_home_work_outlined,
                size: 20,
              ),
              title: Text(
                'الشقق',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Houses()))
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.beach_access,
                size: 20,
              ),
              title: Text(
                'الشاليهات',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Beach(),
                  ),
                )
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.festival_outlined,
                size: 20,
              ),
              title: Text(
                'قاعات الافراح',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HallsScreen(),
                  ),
                )
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 199.0),
              child: ListTile(
                leading: Icon(
                  Icons.arrow_back,
                  size: 20,
                ),
                title: Text(
                  'الصفحة الرئيسية',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Menu(),
                    ),
                  )
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// const List<String> list = <String>['طرابلس', 'مصراتة', 'براك الشاطئ', 'مرزق'];
//
// class DropdownButtonExample extends StatefulWidget {
//   const DropdownButtonExample({super.key});
//
//   @override
//   State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
// }
//
// class _DropdownButtonExampleState extends State<DropdownButtonExample> {
//   String dropdownValue = list.first;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: DropdownButton<String>(
//         icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
//         hint: Text("المدينة", style: TextStyle(color: Colors.white)),
//         elevation: 16,
//         style: const TextStyle(color: Colors.white),
//         underline: Container(
//           height: 1,
//           color: Color(0xff1E5B22),
//         ),
//         onChanged: (String? value) {
//           // This is called when the user selects an item.
//           setState(() {
//             dropdownValue = value!;
//           });
//         },
//         items: list.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(
//               value,
//               style: TextStyle(color: Colors.black),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// const List<String> floors = <String>['طريق المشتل', 'السراج', 'عين زارة', 'سوق الجمعة'];
// const List<String> chairs = <String>['200 - كرسي', 'السراج', 'عين زارة', 'سوق الجمعة'];
// const List<String> types = <String>['1','2','3'];

// const List<String> floors = <String>['الأول','الثاني'];
//
// String? _selectedItem1;
// class DropdownList extends StatefulWidget {
//   const DropdownList({Key? key}) : super(key: key);
//
//   @override
//   State<DropdownList> createState() => _DropdownListState();
// }
//
// class _DropdownListState extends State<DropdownList> {
//   String dropdownValue = floors.first;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 60,
//       height: 33,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Color(0x61000000),
//             blurRadius: 4,
//             offset: Offset(0, 4), // Shadow position
//           ),
//         ],
//       ),
//       child: Padding(
//         padding:  EdgeInsets.fromLTRB(20, 0, 10, 0),
//         child: DropdownButton<String>(
//           hint: Text("الدور",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16, fontFamily: 'Cairo')),
//           value: _selectedItem1,
//           elevation: 20,
//           icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
//           style: const TextStyle(color: Colors.black),
//           underline: SizedBox(height: 10,),
//
//
//           items: floors.map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(
//                 value,
//                 style: TextStyle(color: Colors.black),
//               ),
//             );
//           }).toList(),
//           onChanged: (String? value) => setState(() {
//             _selectedItem1 = value ?? "";
//           })
//         //    {
//         //   // This is called when the user selects an item.
//         //   // setState(() {
//         //   //   dropdownValue = value!;
//         //   // });
//         // },
//
//         ),
//       ),
//
//     );
//   }
// }
