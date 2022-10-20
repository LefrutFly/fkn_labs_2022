import 'package:flutter/material.dart';

import 'ChooseHeroTitleWidget .dart';
import 'HeroScrollPanel.dart';
import 'MarvelLogoWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black87,
          body: Container(
            margin: const EdgeInsets.only(top: 20, bottom: 50),
            child: Column(
                children: const <Widget>[
                  Expanded(flex: 1, child: MarvelLogoWidget()),
                  Expanded(flex: 1, child: ChooseHeroTitleWidget()),
                  Expanded(flex: 10, child: HeroScrollPanel()),
                ]),
          ),
        ),
      ),
    );
  }
}
