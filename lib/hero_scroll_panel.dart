import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
            final urlImage = heroList[index].linkToImage;
            return HeroAnimation(urlImage: urlImage, index: index);
          },
        ),
      );
}

class HeroPanel extends StatelessWidget {
  const HeroPanel(
      {super.key, required this.urlImage, required this.index, this.onTap});

  final String urlImage;
  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'heroPanel',
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
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
          ),
        ),
      ),
    );
  }

  Widget chooseName(int index) {
    var name = heroList[index].name;
    return Text(
      name,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key, required this.urlImage, required this.index});

  final String urlImage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return HeroPanel(
      urlImage: urlImage,
      index: index,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
          return HeroDataPanel(
            urlImage: urlImage,
            index: index,
            onTap: () {
              Navigator.of(context).pop();
            },
          );
        }));
      },
    );
  }
}

class HeroDataPanel extends StatelessWidget {
  const HeroDataPanel(
      {super.key, required this.urlImage, required this.index, this.onTap});

  final String urlImage;
  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'heroPanel',
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(urlImage),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
