import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'hero_list.dart';

class HeroScrollPanel extends StatelessWidget {
  const HeroScrollPanel({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 1000,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          itemCount: heroList.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = heroList[index].linkToImage;
            return buildPanel(urlImage, index);
          },
        ),
      );

  Widget buildPanel(String urlImage, int index) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(urlImage),
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
        ),
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.bottomCenter,
            child: FittedBox(child: chooseName(index)),
          ),
        ]),
      );

  Widget chooseName(int index) {
    var name = heroList[index].name;
    return Text(
      name,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
