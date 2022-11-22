import 'package:flutter/material.dart';

import 'hero_data.dart';
import 'hero_info_panel.dart';
import 'hero_panel.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key, required this.index, required this.heroList});

  final List<HeroData> heroList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return HeroPanel(
      heroList: heroList,
      index: index,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
          return HeroInfoPanel(
            heroList: heroList,
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
