import 'package:flutter/material.dart';

class MarvelLogoWidget extends StatelessWidget {
  const MarvelLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: Image.network(
              'https://raw.githubusercontent.com/effectiveband/fkn_labs_2022/main/Images/marvel.png',
              height: 40,
              ),
        );
  }
}
