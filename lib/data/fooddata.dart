



import 'dart:convert';

import 'package:flutter/services.dart';

  Future<List<foodData>>()async{
  final jsonData =await rootBundle.loadString("jsondata/foodinfo.json");
      final jsonList = json.decode(jsonData) as List<dynamic>;
      return
}