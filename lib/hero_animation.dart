import 'package:flutter/material.dart';

import 'hero_info_panel.dart';
import 'hero_panel.dart';


class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return HeroPanel(
      index: index,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
          return HeroInfoPanel(
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