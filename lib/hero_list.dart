class HeroData {
  final String name;
  final String linkToImage;
  final String info;

  const HeroData(this.name, this.linkToImage, this.info);
}

//todo: поменять данные в linkToImage на ссылки, так как по заданию они должны загружаться из сети
const captainAmerica = HeroData('Captain America', 'assets/capAmerica.jpg', 'I am Captain America');
const deadpool = HeroData('Deadpool', 'assets/deadpool.jpg', 'I am Deadpool'); //todo: поменять картинку дедпула, чтобы не было белого фона
const doctorStrange = HeroData('Doctor Strange', 'assets/doctorStrange.jpg', 'I am Doctor Strange');
const ironMan = HeroData('Iron Man', 'assets/ironman.jpg', 'I am Iron Man');
const spiderman = HeroData('Spiderman', 'assets/spiderMan.jpg', 'I am Spiderman');
const thanos = HeroData('Thanos', 'assets/tanos.jpg', 'I am Thanos');
const thor = HeroData('Thor', 'assets/tor.jpg', 'I am Thor');

const List<HeroData> heroList = [
  captainAmerica,
  deadpool,
  doctorStrange,
  ironMan,
  spiderman,
  thanos,
  thor,
];
