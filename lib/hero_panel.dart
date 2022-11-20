import 'package:application/text_styles.dart';
import 'package:flutter/material.dart';

import 'hero_list.dart';

class HeroPanel extends StatelessWidget {
  const HeroPanel({super.key, required this.index, this.onTap});

  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Hero(
        tag: 'heroPanel',
        child: Material(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(heroList[index].linkToImage),
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
            ),
            child: InkWell(
              onTap: onTap,
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

  Widget chooseName(int index) {
    var name = heroList[index].name;
    return Text(name, style: h1TextStyle);
  }
}
