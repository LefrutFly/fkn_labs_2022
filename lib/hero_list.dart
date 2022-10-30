class HeroData {
  final String name;
  final String linkToImage;
  final String info;

  const HeroData(this.name, this.linkToImage, this.info);
}

const captainAmerica = HeroData('Captain America', 'assets/capAmerica.jpg', 'I am a Captain America',);
const deadpool = HeroData('Deadpool', 'assets/deadpool.jpg', 'I am a Deadpool');
const doctorStrange = HeroData('Doctor Strange', 'assets/doctorStrange.jpg', 'I am a Doctor Strange');
const ironMan = HeroData('Iron Man', 'assets/ironman.jpg', 'I am an Iron Man');
const spiderman = HeroData('Spiderman', 'assets/spiderMan.jpg', 'I am a Spiderman');
const thanos = HeroData('Thanos', 'assets/tanos.jpg', 'I am a Thanos');
const thor = HeroData('Thor', 'assets/tor.jpg', 'I am a Thor');


const List<HeroData> heroList = [
  captainAmerica,
  deadpool,
  doctorStrange,
  ironMan,
  spiderman,
  thanos,
  thor,
];
