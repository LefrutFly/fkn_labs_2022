import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'get_http.dart';
import 'hero_data_builder.dart';
import 'hero_list.dart';
import 'home_page.dart';

class Project {
  final heroDataBuilder = HeroDataBuilder();

  void start() async {
    try {
      var response = await getHttp('http://gateway.marvel.com/v1/public/characters');
      build(response);
      runApp(const HomePage());
    } catch (e) {
      print(e);
    }
  }

  void build(Response response) {
    heroList = heroDataBuilder.build(response);
  }
}