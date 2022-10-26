class Hero {
  final String name;
  final String linkToImage;
  final String info;

  const Hero(this.name, this.linkToImage, this.info);
}

const captainAmerica = Hero('Captain America', 'assets/capAmerica.jpg', '',);
const deadpool = Hero('Deadpool', 'assets/deadpool.jpg', '');
const doctorStrange = Hero('Doctor Strange', 'assets/doctorStrange.jpg', '');
const ironMan = Hero('Iron Man', 'assets/ironman.jpg', '');
const spiderman = Hero('Spiderman', 'assets/spiderMan.jpg', '');
const thanos = Hero('Thanos', 'assets/tanos.jpg', '');
const thor = Hero('Thor', 'assets/tor.jpg', '');


const List<Hero> heroList = [
  captainAmerica,
  deadpool,
  doctorStrange,
  ironMan,
  spiderman,
  thanos,
  thor,
];
