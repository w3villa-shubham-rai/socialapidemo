import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia_page/data/network/network_api_service.dart';
import 'package:socialmedia_page/res/appurl/appurl.dart';

import '../../model/socialmediapage/social_media_model_form.dart';

// class SocailRepositry {
//   final _apiservice = NetworkService();
//   Future<WallPosts> userListApi() async {
//     Map<String, dynamic> responsce =await _apiservice.getApi(AppUrl.socialmediapageurl);
//     // debugPrint("Response:$responsce");
//     return WallPosts.fromJson(responsce);
//   }
// }


class SocailRepositry {
  final _apiservice = NetworkService();
  Future<Map<String, dynamic>?> userListApi() async {
    try {
      Map<String, dynamic>? response = await _apiservice.getApi(AppUrl.socialmediapageurl);
      
      return response;
    } catch (error) {
      if (kDebugMode) {
        print("Error: $error");
      }
      return null; 
    }
  }
}
