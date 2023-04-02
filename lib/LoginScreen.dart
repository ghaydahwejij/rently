import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isPasswordObs = true;

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Scaffold(

        body: Container(
          color: Color(0xff004504),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 57.0),
                    child: Image.asset("images/r2-removebg-preview 2.png",alignment: Alignment.topLeft,width: 331,height: 263,),
                  ),
                  Text("مرحباً بعودتك",style: TextStyle(color: Colors.white,fontFamily: 'Cairo',fontSize: 40),) ,
                  Text("مرحباً بعودتك ! ادخل بياناتك الشخصية",style: TextStyle(color: Colors.white,fontFamily: 'Cairo',fontSize: 22)),
                  SizedBox(
                    height: 20,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(30),

                        ),
                        label: Text("البريد الألكتروني",style: TextStyle(color: Colors.white,fontFamily: 'Cairo'),
                        ),
                        hintText: "أدخل بريدك الألكتروني",
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                        prefixIcon: Icon(Icons.email,color: Colors.white,),),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,

                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(width: 1.5, color: Colors.white),
                          ),
                        label: Text("الرقم السري",style: TextStyle(color: Colors.white,fontFamily: 'Cairo') ,),
                        hintText: "ادخل رقمك السري",
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                        prefixIcon: Icon(Icons.password,color: Colors.white,),
                        suffixIcon: IconButton(
                            onPressed: () {
                              isPasswordObs = !isPasswordObs;
                              setState(() {});
                            },

                            icon: isPasswordObs?Icon(Icons.visibility,color: Colors.white):Icon(Icons.visibility_off)),
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
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 255,
                      height: 48,
                      child: ElevatedButton(

                      onPressed: () {

                      }, child: Text(
                      "تسجيل دخول",
                      style: TextStyle(color: Color(0xff1E5B22), fontSize: 18,fontFamily: 'Cairo'),
                ),
                style: ButtonStyle(
                    alignment: Alignment.center,
                      backgroundColor:
                      MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38.0),
                          )),
                )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 255,
                      height: 48,
                      child: ElevatedButton(

                          onPressed: () {}, child: Row(
                            children: [
                              Image.asset("icons/google.png"),
                              Text(
                        "تسجيل دخول عبر جوجل",
                        style: TextStyle(color: Color(0xff1E5B22), fontSize: 18,fontFamily: 'Cairo'),
                      ),
                            ],
                          ),
                          style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(38.0),
                                )),
                          )),
                    ),
                  ),
                  Align(alignment: Alignment.center,
                    child: Text("ليس لديك حساب ؟ سجل الأن",style: TextStyle(color: Colors.white,fontFamily: 'Cairo',fontSize: 16),)),


                ]
            ),
          ),
        ),
      ),
    );
  }
}

