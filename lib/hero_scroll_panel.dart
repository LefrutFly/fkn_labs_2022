import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'hero_animation.dart';
import 'hero_list.dart';

class HeroScrollPanel extends StatelessWidget {
  const HeroScrollPanel({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: double.infinity,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          itemCount: heroList.length,
          itemBuilder: (context, index, realIndex) {
            return HeroAnimation(index: index);
          },
        ),
      );
}
