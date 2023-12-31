import 'package:flutter/foundation.dart';
import 'package:socialmedia_page/data/network/network_api_service.dart';
import 'package:socialmedia_page/model/allcoment/allcoments.dart';
import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';
import 'package:socialmedia_page/model/story/storymodel.dart';

import 'package:socialmedia_page/res/appurl/appurl.dart';

// class SocailRepositry {
//   final _apiservice = NetworkService();
//   userListApi() async {
//     var responsce = await _apiservice.getApi(AppUrl.socialmediapageurl);
//     debugPrint("Response:${responsce['wall_posts']}");

//     // return WallPosts.fromJson(responsce);
//     // var orderTab = WallPosts.fromJson(json.decode(responsce));
//   }
// }

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

class SocailRepositry {
  final _apiservice = NetworkService();
  userListApi() async {
    var responsce = await _apiservice.getApi(AppUrl.socialmediapageurl);
    debugPrint("Response:${responsce.runtimeType}");
    WallPosts data = WallPosts.fromJson(responsce);
    debugPrint("Response:${data.wallPosts}");
    return data.wallPosts;
    // var orderTab = WallPosts.fromJson(json.decode(responsce));
  }

  userstoryListApi() async {
    var stroryresponsce = await _apiservice.getApi(AppUrl.socialmediastoryurl);
    // debugPrint("story_fetch_Response:${stroryresponsce.runtimeType}");
    Storymodel data = Storymodel.fromJson(stroryresponsce);
    debugPrint("Response:${data.topThree}");
    return data.data;
  }

  showallCommentApi() async {
    var allcomentsresponsce =
        await _apiservice.getApi(AppUrl.socialmediaallcomment);
    debugPrint("allcomments_Responsce:${allcomentsresponsce.runtimeType}");
    AllComments data = AllComments.fromJson(allcomentsresponsce);
  }
}
