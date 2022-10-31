import 'package:application/text_styles.dart';
import 'package:flutter/material.dart';

import 'hero_list.dart';

class HeroInfoPanel extends StatelessWidget {
  const HeroInfoPanel(
      {super.key, required this.urlImage, required this.index, this.onTap});

  final String urlImage;
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
                    image: AssetImage(urlImage),
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
                  //todo: сделать скейлинг текста от размера экрана
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
                            heroList[index].info,
                            style: h2TextStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            heroList[index].name,
                            style: h1TextStyle,
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
