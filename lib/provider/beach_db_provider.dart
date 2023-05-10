import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../model/BeachResponse.dart';
import '../model/HouseResponse.dart';

var b_path = "http://192.168.43.15:8080";

class BeachProvider extends ChangeNotifier{
  Dio? dio;
  List<BeachResponse>? data;

  BeachProvider(){
    print(" provider constructor");
    dio = Dio(
        BaseOptions(contentType: "Application/json")
    );
  }

  Future<void> getBeachProvider() async{
    var response= await dio?.get("$b_path/beach");
    List<dynamic> jsonList = response?.data;
    print("json $jsonList");
    data=jsonList.map((api) => BeachResponse.fromJson(api)).toList();
    notifyListeners();
  }

}