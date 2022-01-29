import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:healthpro/model/foodmodel.dart';

class FoodData{
  Future<List<FoodModel>> jsonfunction() async{
    final jsonProduct = await rootBundle.loadString("jsondata/foodinfo.json");
    final list = json.decode(jsonProduct) as List<dynamic>;
    return list.map((e) => FoodModel.fromJson(e)).toList();
  }
}