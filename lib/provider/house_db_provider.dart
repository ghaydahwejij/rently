import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../model/HouseResponse.dart';

var house_path = "http://192.168.43.15:8080";

class HouseProvider extends ChangeNotifier{
  Dio? dio;
  List<HouseResponse>? data;

  HouseProvider(){
    print(" provider constructor");
    dio = Dio(
        BaseOptions(contentType: "Application/json")
    );
  }

  Future<void> getHouseProvider() async{
    var response= await dio?.get("$house_path/houses");
    List<dynamic> jsonList = response?.data;
    print("json $jsonList");
    data=jsonList.map((api) => HouseResponse.fromJson(api)).toList();
    notifyListeners();
  }
}