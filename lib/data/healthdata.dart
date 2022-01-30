import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:healthpro/model/healthmodel.dart';

class FoodData{
  Future<List> jsonfunction() async{
    final jsonProduct = await rootBundle.loadString("jsondata/healthinfo.json");
    final list = json.decode(jsonProduct) as List<dynamic>;
    return list.map((e) => HealthModel.fromJson(e)).toList();
  }
}