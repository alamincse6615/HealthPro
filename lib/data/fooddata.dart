

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:healthpro/model/foodmodel.dart';



Future<List<FoodModel>> foodfunction() async {
  final foodProduct = await rootBundle.loadString("jsondata/foodinfo.json");
  final foodlist = json.decode(foodProduct) as List<dynamic>;
  return foodlist.map((e) => FoodModel.fromJson(e)).toList();
}