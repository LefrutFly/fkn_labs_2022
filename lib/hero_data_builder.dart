import 'dart:convert';

import 'package:application/hero_list.dart';
import 'package:dio/dio.dart';

class HeroDataBuilder {
  List<HeroData> build(Response response) {
    List<HeroData> heroList = [];
    final decode = response.data;
    final s = decode['data']['results'];
    for(var hero in s){
      print(hero['name']);
    }
    return heroList;
  }
}