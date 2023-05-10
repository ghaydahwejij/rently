import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  var myusername, mypassword, myemail;

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  late UserCredential user;

  signup() async{
    // var formdata=formstate.currentState!;
    // if(formdata.validate()){
    //
    // }
    // else
    //   return "not valid ";


           try {
               user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                 email: emailController.text,
                 password: passController.text,

             );
               return user;
           } on FirebaseAuthException catch (e) {
             // if (e.code == 'weak-password') {
             //   print('No user found for that email.');
             // } else if (e.code == 'wrong-password') {
             //   print('Wrong password provided for that user.');
             // }
           }
         }




  @override
  Widget build(BuildContext context) {
    bool isPasswordObs = true;

    return Scaffold(
      body: Container(
        color: Color(0xffFDFDFEFF),
        key: formstate,
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
                  "أنشاء حساب",
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
                onSaved: (val) {
                  myusername = val!;
                },

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xff004504)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  label: Text(
                    "أسم المستخدم",
                    style: TextStyle(
                        color: Color(0xff004504), fontFamily: 'Cairo'),
                  ),
                  hintText: "ادخل اسمك السمتخدم",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff004504),
                  ),
                ),
              ),
            ),
            Directionality(

              textDirection: TextDirection.rtl,
              child: TextFormField(
                controller: passController,
                onSaved: (val) {
                  mypassword = val!;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xff004504)),
                  ),
                  label: Text(
                    "الرقم السري",
                    style: TextStyle(
                        color: Color(0xff004504), fontFamily: 'Cairo'),
                  ),
                  hintText: "ادخل رقمك السري",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color(0xff004504),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        isPasswordObs = !isPasswordObs;
                        setState(() {});
                      },
                      icon: isPasswordObs
                          ? Icon(Icons.visibility, color: Colors.white)
                          : Icon(Icons.visibility_off)),
                ),
                obscureText: isPasswordObs,
                onChanged: (text) {
                  print(text);
                },
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.go,
                validator: (pass) {
                  if (pass?.isEmpty == true) {
                    return "Password can't be empty";
                  }
                  return null;
                },
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                controller: emailController,
                onSaved: (val) {
                  myemail = val!;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xff004504)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  label: Text(
                    "البريد الألكتروني",
                    style: TextStyle(
                        color: Color(0xff004504), fontFamily: 'Cairo'),
                  ),
                  hintText: "أدخل بريدك الألكتروني",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff004504),
                  ),
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xff004504)),
                  ),
                  label: Text(
                    "رقم الهاتف",
                    style: TextStyle(
                        color: Color(0xff004504), fontFamily: 'Cairo'),
                  ),
                  hintText: "ادخل رقمك الهاتف",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(
                    Icons.phone_android_rounded,
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
                      if(emailController.text=="")
                      showAlertDialog2(context);
                      if(emailController.text!="")
                        showAlertDialog1(context);

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