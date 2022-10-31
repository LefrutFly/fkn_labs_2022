import 'package:application/text_styles.dart';
import 'package:flutter/material.dart';

import 'hero_list.dart';

class HeroInfoPanel extends StatelessWidget {
  const HeroInfoPanel({super.key, required this.index, this.onTap});

  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Hero(
        tag: 'heroPanel',
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(heroList[index].linkToInfoPanelImage),
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
                      FittedBox(
                        child: Text(
                          heroList[index].info,
                          style: h2TextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Text(
                          heroList[index].name,
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
