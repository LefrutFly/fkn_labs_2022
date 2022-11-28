import 'package:flutter/material.dart';

import 'hero_data.dart';
import 'hero_info_panel.dart';
import 'hero_panel.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key, required this.heroData});

  final HeroData heroData;

  @override
  Widget build(BuildContext context) {
    return HeroPanel(
      heroData: heroData,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
          return HeroInfoPanel(
            heroData: heroData,
            onTap: () {
              Navigator.of(context).pop();
            },
          );
        }));
      },
    );
  }
}
