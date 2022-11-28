import 'package:application/text_styles.dart';
import 'package:flutter/material.dart';

import 'hero_data.dart';

class HeroInfoPanel extends StatelessWidget {
  const HeroInfoPanel(
      {super.key, required this.heroData, this.onTap});

  final HeroData heroData;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Hero(
        tag: heroList[index].name,
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(heroData.linkToInfoPanelImage),
              ),
            ),
            child: Stack(children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(20),
                child: IconButton(
                  onPressed: onTap,
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(
                        heroData.info,
                        style: h2TextStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Text(
                          heroData.name,
                          style: h1TextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      );
}
