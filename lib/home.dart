import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex=0;
  String dropdownValue = 'Dog';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.9, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Icon(Icons.menu),
                        ),
                        Image.asset(
                          "images/l.png",
                          alignment: Alignment.topLeft,
                          width: 77,
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 350,
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
                        children: [
                      // Step 1.
// Step 2.
                      DropdownButton<String>(
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 30),
                            ),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 319,
                    height: 264,
                    child: Container(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/h1.png",width: 284,height: 172,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Image.asset("images/stars.png",width: 79,height: 25,),
                                Text("1400 دل ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),

                              ],),

                              Column(children: [
                                Text("طرابلس,ليبيا ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),
                                Text("3 غرف وحمامين وصالة كبيرة",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),
                                Text("مدة شهر ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),

                              ],),

                            ],
                          )


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 319,
                    height: 264,
                    child: Container(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/h1.png",width: 284,height: 172,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Image.asset("images/stars.png",width: 79,height: 25,),
                                Text("1400 دل ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),

                              ],),

                              Column(children: [
                                Text("طرابلس,ليبيا ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),
                                Text("3 غرف وحمامين وصالة كبيرة",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),
                                Text("مدة شهر ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),

                              ],),

                            ],
                          )


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 319,
                    height: 264,
                    child: Container(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/h1.png",width: 284,height: 172,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Image.asset("images/stars.png",width: 79,height: 25,),
                                Text("1400 دل ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),

                              ],),

                              Column(children: [
                                Text("طرابلس,ليبيا ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),
                                Text("3 غرف وحمامين وصالة كبيرة",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),
                                Text("مدة شهر ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),

                              ],),

                            ],
                          )


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 319,
                    height: 264,
                    child: Container(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/h1.png",width: 284,height: 172,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Image.asset("images/stars.png",width: 79,height: 25,),
                                Text("1400 دل ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),

                              ],),

                              Column(children: [
                                Text("طرابلس,ليبيا ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),
                                Text("3 غرف وحمامين وصالة كبيرة",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),
                                Text("مدة شهر ",style: TextStyle(color: Color(0xff000000), fontSize: 14,fontFamily: 'Cairo')),

                              ],),

                            ],
                          )


                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),

          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                var currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(
                icon: Icon(Icons.person_outline,color: Color(0xff004504),),
                label: 'الملف الشخصي',
              ),
            NavigationDestination(
                selectedIcon: Icon(Icons.search,color: Color(0xff004504),),
                icon: Icon(Icons.search),
                label: 'البحث',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.favorite_border,color: Color(0xff004504),),
                icon: Icon(Icons.favorite_border),
                label: 'المفضلة',
              ),
              NavigationDestination(
                icon: Icon(Icons.home_outlined,color: Color(0xff004504),),
                label: 'الصفحة الرئيسية',
              ),

            ],
          ),
    ),
    );
  }
}



// bottomNavigationBar:
          // BottomNavigationBar(items: const <BottomNavigationBarItem>[
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.home,
          //       color: Colors.redAccent,
          //     ),
          //     label: 'الصفحة الرئيسية',
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.person,
          //       color: Colors.redAccent,
          //     ),
          //     label: 'الملف الشخصي',
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.search,
          //       color: Colors.redAccent,
          //     ),
          //     label: 'البحث',
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.favorite,
          //       color: Colors.redAccent,
          //     ),
          //     label: 'المفضلة',
          //   ),

