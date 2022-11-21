import 'package:flutter/material.dart';

import 'choose_hero_title_widget .dart';
import 'hero_scroll_panel.dart';
import 'marvel_logo_widget.dart';

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
                  MarvelLogoWidget(),
                  ChooseHeroTitleWidget(),
                  Expanded(child: HeroScrollPanel()),
                ]),
          ),
        ),
      ),
    );
  }
}
