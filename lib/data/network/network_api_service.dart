import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:socialmedia_page/data/network/base_api_service.dart';

class NetworkService extends BaseApiService {
  @override
  Future<dynamic> getApi(dynamic url) async {
      
      if (kDebugMode) {
        print(url);
      }
    
    dynamic responscejson;
    try {
      final Map<String, String> headers = {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoyLCJ0aW1lIjoxNjk1OTY4NTMxfQ.7pjcCCVoZzkzUu3d_l-HmbU935tDYB-jtb-vBNp-6gs',
      };
      final responsce = await get(Uri.parse(url), headers: headers)
          .timeout(const Duration(seconds: 30));
      debugPrint(responsce.toString());
      responscejson = returnResponsce(responsce);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return responscejson;
  }

  @override
  Future postApi(data, dynamic url) async {
   
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
