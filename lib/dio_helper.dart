import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ibs_food_map/data_model.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(
        baseUrl: 'https://32870633-5b10-4c45-858e-5c3901b11ab9.mock.pstmn.io/',
        receiveDataWhenStatusError: true));
  }

  static Future<FoodMap> getData({required String myUrl}) async {
    var myData = await dio?.get(myUrl);
    var decodedData = json.decode(myData?.data);
    print(decodedData);
    print(myData?.statusCode);
    return FoodMap.fromJson(decodedData);
  }
}
