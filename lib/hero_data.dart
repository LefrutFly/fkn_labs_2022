class HeroData {
  final String name;
  final String linkToImage;
  final String info;
  final String linkToInfoPanelImage;

  const HeroData(
      this.name, this.linkToImage, this.info, this.linkToInfoPanelImage);

  factory HeroData.fromJson(Map<String, dynamic> json) {
    String name = json['name'];
    String img =
        json['thumbnail']['path'] + '.' + json['thumbnail']['extension'];
    String info = json['description'];
    if (info == '') {
      info = '  ';
    }
    final newHero = HeroData(name, img, info, img);
    return newHero;
  }
}
