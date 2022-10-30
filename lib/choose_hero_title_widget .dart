import 'package:application/text_styles.dart';
import 'package:flutter/material.dart';

class ChooseHeroTitleWidget extends StatelessWidget {
  const ChooseHeroTitleWidget({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.only(bottom: 60),
        child: FittedBox(
          child: Text('Choose your hero',
              style: h1TextStyle)),
        );
}
