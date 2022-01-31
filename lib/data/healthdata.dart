
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:healthpro/model/healthmodel.dart';

class HealthData{
   Future<List<HealthModel>>healthfunction() async{
    final healthProduct = await rootBundle.loadString('jsondata/healthinfo.json');
    final healthList = json.decode(healthProduct) as List<dynamic>;
    return healthList.map((e) =>HealthModel.fromJson(e)).toList();

  }
}