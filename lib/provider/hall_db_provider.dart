
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../model/HallResponse.dart';

var hall_path = "http://192.168.43.15:8080";

class HallProvider extends ChangeNotifier{
  Dio? dio;
  List<HallResponse>? data;

  HallProvider(){
    print(" provider constructor");
    dio = Dio(
        BaseOptions(contentType: "Application/json")
    );
  }

  Future<void> getHallProvider() async{
    var response= await dio?.get("$hall_path/hall");
    List<dynamic> jsonList = response?.data;
    print("json $jsonList");
    data=jsonList.map((api) => HallResponse.fromJson(api)).toList();
    notifyListeners();
  }

}