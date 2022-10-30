import 'package:flutter/material.dart';

import 'hero_info_panel.dart';
import 'hero_panel.dart';


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
          return HeroInfoPanel(
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