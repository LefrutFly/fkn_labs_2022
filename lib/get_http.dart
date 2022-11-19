import 'package:application/hero_data_builder.dart';
import 'package:application/keys.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'hero_list.dart';

void getHttp() async {
  final heroDataBuilder = HeroDataBuilder();
  final ts = generateTS();
  final hash = generateHASH(ts, privateKey, publicKey);
  Response response = await Dio()
      .get('http://gateway.marvel.com/v1/public/characters', queryParameters: {
    'ts': ts,
    'apikey': publicKey,
    'hash': hash,
  });
  heroList = heroDataBuilder.build(response);
}

String generateMd5(String input) {
  return md5.convert(utf8.encode(input)).toString();
}

String generateTS() {
  final ts = DateTime.now().toString();
  return ts;
}

String generateHASH(String ts, String privateKey, String publicKey) {
  final hash = generateMd5(ts + privateKey + publicKey);
  return hash;
}
