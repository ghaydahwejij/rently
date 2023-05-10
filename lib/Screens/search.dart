import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rently/Screens/map.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 7.0, left: 7.0),
                child:  GestureDetector(

                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Rmap(),
                        ),
                      );
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "images/map.png",
                        width: 45,
                        alignment: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: SizedBox(
                  height: 35,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          "",
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Cairo'),
                        ),
                        hintText: "البحث عن مبنى",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      "الأقرب إليك",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/Rectangle 104.png"),
                      Text("شقة مؤثثة"),
                      Row(
                        children: [
                          Text("شارع الوادي"),
                          Icon(
                            Icons.location_on_sharp,
                            size: 12,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/Rectangle 137.png"),
                      Text(" صالة الهناء"),
                      Row(
                        children: [
                          Text("أبوستة"),
                          Icon(
                            Icons.location_on_sharp,
                            size: 12,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/Rectangle 138.png"),
                      Text("شقة مؤثثة"),
                      Row(
                        children: [
                          Text("شارع الوادي"),
                          Icon(
                            Icons.location_on_sharp,
                            size: 12,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      "الأعلى تقيمماً",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                    width: 97,
                    height: 145,
                    child: Column(
                      children: [
                        Image.asset(
                          "images/Rectangle 140.png",
                          width: 100,
                        ),
                        Text("شقة مؤثثة"),
                        Image.asset(
                          "images/stars.png",
                          width: 50,
                        )
                      ],
                    ),
                  ),
                  Container(
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
                    width: 97,
                    height: 145,
                    child: Column(
                      children: [
                        Image.asset(
                          "images/Rectangle 142.png",
                          width: 100,
                        ),
                        Text("صالة الهناء"),
                        Image.asset(
                          "images/stars.png",
                          width: 50,
                        )
                      ],
                    ),
                  ),
                  Container(
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
                    width: 97,
                    height: 145,
                    child: Column(
                      children: [
                        Image.asset(
                          "images/Rectangle 141.png",
                          width: 100,
                        ),
                        Text("شقة مؤثثة"),
                        Image.asset(
                          "images/stars.png",
                          width: 50,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      "الأقل سعراً",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/Rectangle 104.png"),
                      Text("شقة مؤثثة"),
                      Row(
                        children: [
                          Text("شارع الوادي"),
                          Icon(
                            Icons.location_on_sharp,
                            size: 12,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/Rectangle 137.png"),
                      Text(" صالة الهناء"),
                      Row(
                        children: [
                          Text("أبوستة"),
                          Icon(
                            Icons.location_on_sharp,
                            size: 12,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/Rectangle 138.png"),
                      Text("شقة مؤثثة"),
                      Row(
                        children: [
                          Text("شارع الوادي"),
                          Icon(
                            Icons.location_on_sharp,
                            size: 12,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> list = <String>['طرابلس', 'بنغازي', 'مصراتة', 'صبراتة'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
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
            left: 5.0,
          ),
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("المدينة",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
            elevation: 16,
            icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.white,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
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
      ),
    );
  }
}

const List<String> prices = <String>[
  '200-500',
  '500-1000',
  '1500',
];

class DropDownPrices extends StatefulWidget {
  const DropDownPrices({Key? key}) : super(key: key);

  @override
  State<DropDownPrices> createState() => _DropDownPricesState();
}

class _DropDownPricesState extends State<DropDownPrices> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
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
            left: 5.0,
          ),
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("الأسعار",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
            elevation: 16,
            icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.white,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: prices.map<DropdownMenuItem<String>>((String value) {
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
      ),
    );
  }
}

const List<String> building = <String>[
  'منازل',
  'شاليهات',
  'شقق',
  'قاعات افراح',
];

class DropDownBuilding extends StatefulWidget {
  const DropDownBuilding({Key? key}) : super(key: key);

  @override
  State<DropDownBuilding> createState() => _DropDownBuildingState();
}

class _DropDownBuildingState extends State<DropDownBuilding> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
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
            left: 2.0,
          ),
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("المباني",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ),
            elevation: 16,
            icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.white,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: building.map<DropdownMenuItem<String>>((String value) {
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
      ),
    );
  }
}
