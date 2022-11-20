import 'package:dio/dio.dart';

import 'hero_data.dart';

class HeroDataBuilder {
  List<HeroData> build(Response response) {
    List<HeroData> heroList = [];
    final decode = response.data;
    final heroes = decode['data']['results'];
    for(var hero in heroes){
      String name = hero['name'];
      String img = hero['thumbnail']['path'] + '.' + hero['thumbnail']['extension'];
      String info = hero['description'];
      if(info == '') {
        info = '  ';
      }
      final newHero = HeroData(name, img, info, img);
      heroList.add(newHero);
    }
    return heroList;
  }
}