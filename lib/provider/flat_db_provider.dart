

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:rently/model/FlatResponse.dart';

var flat_path = "http://192.168.43.15:8080";

class FlatProvider extends ChangeNotifier{
  Dio? dio;
  List<FlatResponse>? data;

  FlatProvider(){
    print(" provider constructor");
    dio = Dio(
        BaseOptions(contentType: "Application/json")
    );
  }

  Future<void> getFlatProvider() async{
    var response= await dio?.get("$flat_path/flats");
    List<dynamic> jsonList = response?.data;
    print("json $jsonList");
    data=jsonList.map((api) => FlatResponse.fromJson(api)).toList();
    notifyListeners();
  }

}