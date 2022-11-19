import 'package:application/keys.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

void getHttp() async {
  try {
    final ts = generateTS();
    final hash = generateHASH(ts, privateKey, publicKey);
    var response = await Dio()
        .get('http://gateway.marvel.com/v1/public/comics', queryParameters: {
      'ts': ts,
      'apikey': publicKey,
      'hash': hash,
    });
    final decode = jsonDecode(response.data);
    final s = decode['data']['results'].toString();
    print(s);
  } catch (e) {
    print(e);
  }
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
