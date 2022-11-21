import 'package:flutter/material.dart';

import 'hero_list.dart';

class HeroPanel extends StatelessWidget {
  const HeroPanel(
      {super.key, required this.index, this.onTap});

  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Hero(
        tag: heroList[index].name,
        child: Material(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(heroList[index].linkToImage),
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
    return Text(
      name,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
