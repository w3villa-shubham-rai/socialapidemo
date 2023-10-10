import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:socialmedia_page/model/allcoment/allcoments.dart';
import 'package:socialmedia_page/model/story/storymodel.dart';
import 'package:socialmedia_page/repositry/socialrepositry/socialrepositry.dart';

class StoryController extends GetxController {
  final _api = SocailRepositry();
  var showAllItems = false.obs;
  var isLoading = true.obs;
  List fetchedDatastory = [].obs;
  List fetchallcomments = [].obs;
  late Storymodel data;
  late AllComments datacoments;
  Future<void> fetchUserStoryList() async {
    try {
      isLoading(true);
      final value = await _api.userstoryListApi();

      if (value != null) {
        fetchedDatastory = value;
        try {
          debugPrint("Story_contolle_ram: $value"); // Print the value here.
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

  void toggleShowAll() {
    showAllItems.value = !showAllItems.value;
  }

  Future<void> fetchallcomment() async {
    try {
      isLoading(true);
      final value = await _api.showallCommentApi();

      if (value != null) {
        fetchallcomments = value;
        try {
          debugPrint("Comments_all_shyam: $value");
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
