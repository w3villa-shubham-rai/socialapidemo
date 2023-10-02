import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:socialmedia_page/data/network/base_api_service.dart';

class NetworkService extends BaseApiService {
  @override
  Future<dynamic> getApi(String url) async {}

  @override
  Future postApi(data, String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responscejson;
    try {
      final responsce =
          await get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responscejson = returnResponsce(responsce);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  dynamic returnResponsce(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responsceJson = jsonDecode(response.body);
        return responsceJson;
      case 400:
        dynamic responsceJson = jsonDecode(response.body);
        return responsceJson;
      default:
        if (kDebugMode) {
          print("error");
        }
    }
  }
}
