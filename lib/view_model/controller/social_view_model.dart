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

// class SocialController extends GetxController {
//   final _api = SocailRepositry();

// final userList = WallPosts(wallPosts: [], totalPages: 0).obs;

// void setUserList(WallPosts value) {
//   userList.value = value;
// }

// dynamic fetchUserList() async {
// await _api.userListApi().then((value)
//   {
//     // setUserList(value);
//     // Print the API data once it's fetched.
//     if (kDebugMode) {
//       print("API Data: ${value.toJson()}");
//     }
//   }).catchError((error) {
//     if (kDebugMode) {
//       print("Error: $error");
//     }
//   });
// }
// }

// class SocialController extends GetxController {
//   final _api = SocailRepositry();

//   dynamic fetchedData; // Variable to store the fetched data

//   dynamic fetchUserList() async {
//     try {
//       final value = await _api.userListApi();
//       if (value != null) {
//         // Store the fetched data in the 'fetchedData' variable
//         fetchedData = value;

//         // Print the API data once it's fetched.
//         if (kDebugMode) {
//           print("API Data: $fetchedData");
//         }
//       } else {
//         // Handle the case where the response is null
//         // You can add your error handling logic here
//       }
//     } catch (error) {
//       if (kDebugMode) {
//         print("Error: $error");
//       }
//     }
//   }
// }

class SocialController extends GetxController {
  final _api = SocailRepositry();

  var isLoading = true.obs;
  Rx<dynamic> fetchedData = Rx<dynamic>(null);
  late WallPosts data;
 Future<void> fetchUserList() async {
  try {
    isLoading(true);
    final value = await _api.userListApi();

    if (value != null) {
      fetchedData.value = value;
      try {
     
        debugPrint("Shubham:${value['wall_posts']}");
        if (kDebugMode) {
          // print("First Name: $firstName");
        }
      } catch (e) {
        debugPrint("Error Conversion of data WallPost $e");
      }
    } else {
      // Handle null data
      print("API returned null data.");
    }
  } catch (error) {
    if (kDebugMode) {
      print("Error: $error");
    }
  } finally {
    isLoading(false);
  }
}

}
