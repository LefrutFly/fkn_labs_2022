import 'package:application/keys.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class HttpRequests {
  Future<Response<dynamic>> getHttp(String link) {
    final ts = generateTS();
    final hash = generateHASH(ts, privateKey, publicKey);
    return Dio().get(link, queryParameters: {
      'ts': ts,
      'apikey': publicKey,
      'hash': hash,
    });
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
}
