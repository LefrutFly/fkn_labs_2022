import 'package:application/hero_data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'http_requests.dart';

class Project {
  final requests = HttpRequests();
  List<HeroData> heroList = [];

  void start() async {
    try {
      var response = await requests
          .getHttp('http://gateway.marvel.com/v1/public/characters');
      build(response);
      runApp(HomePage(
        heroList: heroList,
      ));
    } catch (e) {
      throw Exception(e);
    }
  }

  void build(Response response) {
    List<HeroData> newHeroList = [];
    final decode = response.data;
    final heroes = decode['data']['results'];
    for (var hero in heroes) {
      newHeroList.add(HeroData.fromJson(hero));
    }
    heroList = newHeroList;
  }
}
