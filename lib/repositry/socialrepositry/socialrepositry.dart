import 'package:flutter/foundation.dart';
import 'package:socialmedia_page/data/network/network_api_service.dart';
import 'package:socialmedia_page/res/appurl/appurl.dart';

class SocailRepositry {
  final _apiservice = NetworkService();
  userListApi() async {
    var responsce = await _apiservice.getApi(AppUrl.socialmediapageurl);
    debugPrint("Response:${responsce['wall_posts']}");

    // return WallPosts.fromJson(responsce);
    // var orderTab = WallPosts.fromJson(json.decode(responsce));
  }
}


//  class SocailRepositry {
//   final _apiservice = NetworkService();
//   Future<Map<String, dynamic>?> userListApi() async {
//     try {
//       Map<String, dynamic>? response = await _apiservice.getApi(AppUrl.socialmediapageurl);
      
//       return response;
//     } catch (error) {
//       if (kDebugMode) {
//         print("Error: $error");
//       }
//       return null; 
//     }
//   }
// }
