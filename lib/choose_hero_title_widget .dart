import 'package:flutter/material.dart';

class ChooseHeroTitleWidget extends StatelessWidget {
  const ChooseHeroTitleWidget({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.only(bottom: 60),
        child: FittedBox(
          child: Text('Choose your hero',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      );
}
