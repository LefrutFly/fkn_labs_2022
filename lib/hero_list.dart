class HeroData {
  final String name;
  final String linkToImage;
  final String info;
  final String linkToInfoPanelImage;

  const HeroData(this.name, this.linkToImage, this.info, this.linkToInfoPanelImage);
}

const captainAmerica = HeroData('Captain America', 'assets/capAmerica.jpg', 'I am Captain America', 'https://gamerwall.pro/uploads/posts/2021-12/1638495974_90-gamerwall-pro-p-supergeroi-kapitan-amerika-marvel-krasivie-99.jpg');
const doctorStrange = HeroData('Doctor Strange', 'assets/doctorStrange.jpg', 'I am Doctor Strange', 'https://wallpapershome.ru/images/wallpapers/doktor-strendj-720x1280-benedikt-kamberbetch-luchshie-filmi-12210.jpg');
const ironMan = HeroData('Iron Man', 'assets/ironman.jpg', 'I am Iron Man', 'https://images.hdqwalls.com/download/iron-man-2018-5k-5m-720x1280.jpg');
const spiderman = HeroData('Spiderman', 'assets/spiderMan.jpg', 'I am Spiderman', 'https://phonoteka.org/uploads/posts/2021-07/1625758898_18-phonoteka-org-p-novii-chelovek-pauk-art-krasivo-19.jpg');
const thanos = HeroData('Thanos', 'assets/tanos.jpg', 'I am Thanos', 'https://images.hdqwalls.com/download/thanos-ready-for-fight-4k-vk-720x1280.jpg');
const thor = HeroData('Thor', 'assets/tor.jpg', 'I am Thor', 'https://i.pinimg.com/originals/de/00/f0/de00f05e5851383e9fe05a070947633f.jpg');

const List<HeroData> heroList = [
  captainAmerica,
  doctorStrange,
  ironMan,
  spiderman,
  thanos,
  thor,
];
