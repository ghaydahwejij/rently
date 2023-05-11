import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isPasswordObs = true;

    return Scaffold(
      body: Container(
        color: Color(0xffFDFDFEFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  "images/glogo.png",
                  width: 100,
                ),
                Text(
                  "تسجيل عقار",
                  style: TextStyle(
                      color: Color(0xff004504),
                      fontFamily: 'Cairo',
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xff004504)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  label: Text(
                    "نوع العقار",
                    style: TextStyle(
                        color: Color(0xff004504), fontFamily: 'Cairo'),
                  ),
                  hintText: "ادخل نوع العقار",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(
                    Icons.add,
                    color: Color(0xff004504),
                  ),
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                controller: typeController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xff004504)),
                  ),
                  label: Text(
                    "السعر",
                    style: TextStyle(
                        color: Color(0xff004504), fontFamily: 'Cairo'),
                  ),
                  hintText: "ادخل السعر",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(
                    Icons.add_circle_rounded,
                    color: Color(0xff004504),
                  ),
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xff004504)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  label: Text(
                    "أسم العقار",
                    style: TextStyle(
                        color: Color(0xff004504), fontFamily: 'Cairo'),
                  ),
                  hintText: "أدخل أسم العقار",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(
                    Icons.add_circle_rounded,
                    color: Color(0xff004504),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 255,
                height: 48,
                child: ElevatedButton(
                    onPressed: () async {
                      if (nameController.text == "") showAlertDialog2(context);
                      if (nameController.text != "") showAlertDialog1(context);

                      //
                      // UserCredential response =await signup();
                      //     print(response.user);
                    },
                    child: Text(
                      "أشتراك",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Cairo'),
                    ),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff1E5B22)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38.0),
                      )),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog1(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("حسنا"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Menu(),
        ),
      );
    },
  );
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("التسجيل:)"),
    content: Text("تم التسجيل بنجاح"),
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

showAlertDialog2(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("حسنا"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("خطأ:)"),
    content: Text("ارجاء ادخال جميع الحقول"),
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
