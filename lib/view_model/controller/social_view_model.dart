// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';
// import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';
// import 'package:socialmedia_page/repositry/socialrepositry/socialrepositry.dart';

// class SocialConreoller extends GetxController {
//   final _api = SocailRepositry();

//   final UserList = WallPosts().obs;

//   // void setRxRequestStatus(Status _value) {
//   //   rxRequeststatus.value = _value;
//   // }

//   void setUserList(WallPosts _value) {
//     UserList.value = _value;
//   }


//   void userlistApi() {
//     _api.userListApi().then((value) {
//       setUserList(value);
//     }).onError((error, stackTrace) {
//       if (kDebugMode) {
//         print("error");
//       }
//     });
//   }
// }


// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';
// import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';
// import 'package:socialmedia_page/repositry/socialrepositry/socialrepositry.dart';



// class SocialController extends GetxController {
//   final _api = SocailRepositry();

//   final userList = WallPosts(wallPosts: []).obs;

//   void setUserList(WallPosts value) {
//     userList.value = value;
//   }

//   void fetchUserList() {
//     _api.userListApi().then((value) {
//       setUserList(value);
//     }).catchError((error) {
//       if (kDebugMode) {
//         print("Error: $error");
//       }
//     });
//   }
// }


import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';
import 'package:socialmedia_page/repositry/socialrepositry/socialrepositry.dart';

class SocialController extends GetxController {
  final _api = SocailRepositry();

  final userList = WallPosts(wallPosts: [], totalPages: 0).obs;
  
  void setUserList(WallPosts value) {
    userList.value = value;
  }

  dynamic fetchUserList() async {
  await _api.userListApi().then((value) 
    {
      setUserList(value);
      // Print the API data once it's fetched.
      if (kDebugMode) {
        print("API Data: ${value.toJson()}");
      }
    }).catchError((error) {
      if (kDebugMode) {
        print("Error: $error");
      }
    });
  }
}
