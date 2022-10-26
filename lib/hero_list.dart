class HeroData {
  final String name;
  final String linkToImage;
  final String info;

  const HeroData(this.name, this.linkToImage, this.info);
}

const captainAmerica = HeroData('Captain America', 'assets/capAmerica.jpg', '',);
const deadpool = HeroData('Deadpool', 'assets/deadpool.jpg', '');
const doctorStrange = HeroData('Doctor Strange', 'assets/doctorStrange.jpg', '');
const ironMan = HeroData('Iron Man', 'assets/ironman.jpg', '');
const spiderman = HeroData('Spiderman', 'assets/spiderMan.jpg', '');
const thanos = HeroData('Thanos', 'assets/tanos.jpg', '');
const thor = HeroData('Thor', 'assets/tor.jpg', '');


const List<HeroData> heroList = [
  captainAmerica,
  deadpool,
  doctorStrange,
  ironMan,
  spiderman,
  thanos,
  thor,
];
