// class WallPosts {
//   List<WallPost> wallPosts;
//   int totalPages;

//   WallPosts({
//     required this.wallPosts,
//     required this.totalPages,
//   });

//   factory WallPosts.fromJson(Map<String, dynamic> json) {
//     return WallPosts(
//       wallPosts: List<WallPost>.from(json['wall_posts'].map((x) => WallPost.fromJson(x))),
//       totalPages: json['total_pages'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['wall_posts'] = wallPosts.map((x) => x.toJson()).toList();
//     data['total_pages'] = totalPages;
//     return data;
//   }
// }

// class WallPost {
//   int id;
//   String postBody;
//   String body;
//   String? formattedBody;
//   String wallPostType;
//   String? emojiName;
//   bool isLiked;
//   int totalLikes;
//   String timeAgo;
//   String? attachmentUrl;
//   String? originalAttachmentUrl;
//   bool isEdited;
//   bool surveyTaken;
//   int totalComments;
//   String? imageUrl;
//   bool? isVideo;
//   String? outsideShowcaseImage;
//   String? imgUrlSmall;
//   Profile profile;
//   List<Children> children;
//   List<SurveyQuestions> surveyQuestions;
//   List<PostComment> postComments;

//   WallPost({
//     required this.id,
//     required this.postBody,
//     required this.body,
//     required this.formattedBody,
//     required this.wallPostType,
//     required this.emojiName,
//     required this.isLiked,
//     required this.totalLikes,
//     required this.timeAgo,
//     required this.attachmentUrl,
//     required this.originalAttachmentUrl,
//     required this.isEdited,
//     required this.surveyTaken,
//     required this.totalComments,
//     required this.imageUrl,
//     required this.isVideo,
//     required this.outsideShowcaseImage,
//     required this.imgUrlSmall,
//     required this.profile,
//     required this.children,
//     required this.surveyQuestions,
//     required this.postComments,
//   });

//   factory WallPost.fromJson(Map<String, dynamic> json) {
//     return WallPost(
//       id: json['id'],
//       postBody: json['post_body'],
//       body: json['body'],
//       formattedBody: json['formatted_body'],
//       wallPostType: json['wall_post_type'],
//       emojiName: json['emoji_name'],
//       isLiked: json['is_liked'],
//       totalLikes: json['total_likes'],
//       timeAgo: json['time_ago'],
//       attachmentUrl: json['attachment_url'],
//       originalAttachmentUrl: json['original_attachment_url'],
//       isEdited: json['is_edited'],
//       surveyTaken: json['survey_taken'],
//       totalComments: json['total_comments'],
//       imageUrl: json['image_url'],
//       isVideo: json['is_video'],
//       outsideShowcaseImage: json['outside_showcase_image'],
//       imgUrlSmall: json['img_url_small'],
//       profile: Profile.fromJson(json['profile']),
//       children: List<Children>.from(json['children'].map((x) => Children.fromJson(x))),
//       surveyQuestions: List<SurveyQuestions>.from(json['survey_questions'].map((x) => SurveyQuestions.fromJson(x))),
//       postComments: List<PostComment>.from(json['post_comments'].map((x) => PostComment.fromJson(x))),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['post_body'] = postBody;
//     data['body'] = body;
//     data['formatted_body'] = formattedBody;
//     data['wall_post_type'] = wallPostType;
//     data['emoji_name'] = emojiName;
//     data['is_liked'] = isLiked;
//     data['total_likes'] = totalLikes;
//     data['time_ago'] = timeAgo;
//     data['attachment_url'] = attachmentUrl;
//     data['original_attachment_url'] = originalAttachmentUrl;
//     data['is_edited'] = isEdited;
//     data['survey_taken'] = surveyTaken;
//     data['total_comments'] = totalComments;
//     data['image_url'] = imageUrl;
//     data['is_video'] = isVideo;
//     data['outside_showcase_image'] = outsideShowcaseImage;
//     data['img_url_small'] = imgUrlSmall;
//     data['profile'] = profile.toJson();
//     data['children'] = children.map((x) => x.toJson()).toList();
//     data['survey_questions'] = surveyQuestions.map((x) => x.toJson()).toList();
//     data['post_comments'] = postComments.map((x) => x.toJson()).toList();
//     return data;
//   }
// }

// class Profile {
//   int id;
//   String firstName;
//   String dpUrlSmall;
//   String fullName;
//   dynamic deletedAt;

//   Profile({
//     required this.id,
//     required this.firstName,
//     required this.dpUrlSmall,
//     required this.fullName,
//     required this.deletedAt,
//   });

//   factory Profile.fromJson(Map<String, dynamic> json) {
//     return Profile(
//       id: json['id'],
//       firstName: json['first_name'],
//       dpUrlSmall: json['dp_url_small'],
//       fullName: json['full_name'],
//       deletedAt: json['deleted_at'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['first_name'] = firstName;
//     data['dp_url_small'] = dpUrlSmall;
//     data['full_name'] = fullName;
//     data['deleted_at'] = deletedAt;
//     return data;
//   }
// }

// class Children {
//   int id;
//   String postBody;
//   String body;
//   String? formattedBody;
//   String wallPostType;
//   String? emojiName;
//   bool isLiked;
//   int totalLikes;
//   String timeAgo;
//   String? attachmentUrl;
//   String? originalAttachmentUrl;
//   bool isEdited;
//   bool surveyTaken;
//   int totalComments;
//   String? imageUrl;
//   bool? isVideo;
//   String? outsideShowcaseImage;
//   String? imgUrlSmall;
//   Profile profile;
//   List<dynamic> children;
//   List<dynamic> surveyQuestions;
//   List<PostComment> postComments;

//   Children({
//     required this.id,
//     required this.postBody,
//     required this.body,
//     required this.formattedBody,
//     required this.wallPostType,
//     required this.emojiName,
//     required this.isLiked,
//     required this.totalLikes,
//     required this.timeAgo,
//     required this.attachmentUrl,
//     required this.originalAttachmentUrl,
//     required this.isEdited,
//     required this.surveyTaken,
//     required this.totalComments,
//     required this.imageUrl,
//     required this.isVideo,
//     required this.outsideShowcaseImage,
//     required this.imgUrlSmall,
//     required this.profile,
//     required this.children,
//     required this.surveyQuestions,
//     required this.postComments,
//   });

//   factory Children.fromJson(Map<String, dynamic> json) {
//     return Children(
//       id: json['id'],
//       postBody: json['post_body'],
//       body: json['body'],
//       formattedBody: json['formatted_body'],
//       wallPostType: json['wall_post_type'],
//       emojiName: json['emoji_name'],
//       isLiked: json['is_liked'],
//       totalLikes: json['total_likes'],
//       timeAgo: json['time_ago'],
//       attachmentUrl: json['attachment_url'],
//       originalAttachmentUrl: json['original_attachment_url'],
//       isEdited: json['is_edited'],
//       surveyTaken: json['survey_taken'],
//       totalComments: json['total_comments'],
//       imageUrl: json['image_url'],
//       isVideo: json['is_video'],
//       outsideShowcaseImage: json['outside_showcase_image'],
//       imgUrlSmall: json['img_url_small'],
//       profile: Profile.fromJson(json['profile']),
//       children: List<dynamic>.from(json['children'].map((x) => x)),
//       surveyQuestions: List<dynamic>.from(json['survey_questions'].map((x) => x)),
//       postComments: List<PostComment>.from(json['post_comments'].map((x) => PostComment.fromJson(x))),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['post_body'] = postBody;
//     data['body'] = body;
//     data['formatted_body'] = formattedBody;
//     data['wall_post_type'] = wallPostType;
//     data['emoji_name'] = emojiName;
//     data['is_liked'] = isLiked;
//     data['total_likes'] = totalLikes;
//     data['time_ago'] = timeAgo;
//     data['attachment_url'] = attachmentUrl;
//     data['original_attachment_url'] = originalAttachmentUrl;
//     data['is_edited'] = isEdited;
//     data['survey_taken'] = surveyTaken;
//     data['total_comments'] = totalComments;
//     data['image_url'] = imageUrl;
//     data['is_video'] = isVideo;
//     data['outside_showcase_image'] = outsideShowcaseImage;
//     data['img_url_small'] = imgUrlSmall;
//     data['profile'] = profile.toJson();
//     data['children'] = List<dynamic>.from(children.map((x) => x));
//     data['survey_questions'] = List<dynamic>.from(surveyQuestions.map((x) => x));
//     data['post_comments'] = postComments.map((x) => x.toJson()).toList();
//     return data;
//   }
// }

// class PostComment {
//   int id;
//   String date;
//   String? formattedBody;
//   String fullName;
//   int profileId;
//   String dp;
//   String content;

//   PostComment({
//     required this.id,
//     required this.date,
//     required this.formattedBody,
//     required this.fullName,
//     required this.profileId,
//     required this.dp,
//     required this.content,
//   });

//   factory PostComment.fromJson(Map<String, dynamic> json) {
//     return PostComment(
//       id: json['id'],
//       date: json['date'],
//       formattedBody: json['formatted_body'],
//       fullName: json['full_name'],
//       profileId: json['profile_id'],
//       dp: json['dp'],
//       content: json['content'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['date'] = date;
//     data['formatted_body'] = formattedBody;
//     data['full_name'] = fullName;
//     data['profile_id'] = profileId;
//     data['dp'] = dp;
//     data['content'] = content;
//     return data;
//   }
// }

// class SurveyQuestions {
//   int id;
//   String text;
//   String questionType;
//   bool required;
//   List<SurveyOption> surveyOptions;
//   List<SurveyResponse> surveyResponses;

//   SurveyQuestions({
//     required this.id,
//     required this.text,
//     required this.questionType,
//     required this.required,
//     required this.surveyOptions,
//     required this.surveyResponses,
//   });

//   factory SurveyQuestions.fromJson(Map<String, dynamic> json) {
//     return SurveyQuestions(
//       id: json['id'],
//       text: json['text'],
//       questionType: json['question_type'],
//       required: json['required'],
//       surveyOptions: List<SurveyOption>.from(json['survey_options'].map((x) => SurveyOption.fromJson(x))),
//       surveyResponses: List<SurveyResponse>.from(json['survey_responses'].map((x) => SurveyResponse.fromJson(x))),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['text'] = text;
//     data['question_type'] = questionType;
//     data['required'] = required;
//     data['survey_options'] = surveyOptions.map((x) => x.toJson()).toList();
//     data['survey_responses'] = surveyResponses.map((x) => x.toJson()).toList();
//     return data;
//   }
// }

// class SurveyOption {
//   int id;
//   int surveyQuestionId;
//   String text;

//   SurveyOption({
//     required this.id,
//     required this.surveyQuestionId,
//     required this.text,
//   });

//   factory SurveyOption.fromJson(Map<String, dynamic> json) {
//     return SurveyOption(
//       id: json['id'],
//       surveyQuestionId: json['survey_question_id'],
//       text: json['text'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['survey_question_id'] = surveyQuestionId;
//     data['text'] = text;
//     return data;
//   }
// }

// class SurveyResponse {
//   int id;
//   dynamic text;
//   int surveyOptionId;
//   Profile profile;

//   SurveyResponse({
//     required this.id,
//     required this.text,
//     required this.surveyOptionId,
//     required this.profile,
//   });

//   factory SurveyResponse.fromJson(Map<String, dynamic> json) {
//     return SurveyResponse(
//       id: json['id'],
//       text: json['text'],
//       surveyOptionId: json['survey_option_id'],
//       profile: Profile.fromJson(json['profile']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['text'] = text;
//     data['survey_option_id'] = surveyOptionId;
//     data['profile'] = profile.toJson();
//     return data;
//   }
// }

// To parse this JSON data, do
//
//     final wallPosts = wallPostsFromJson(jsonString);

import 'dart:convert';

WallPosts wallPostsFromJson(String str) => WallPosts.fromJson(json.decode(str));

String wallPostsToJson(WallPosts data) => json.encode(data.toJson());

class WallPosts {
  List<WallPost>? wallPosts;
  int? totalPages;

  WallPosts({
    this.wallPosts,
    this.totalPages,
  });

  factory WallPosts.fromJson(Map<String, dynamic> json) => WallPosts(
        wallPosts: json["wall_posts"] == null
            ? []
            : List<WallPost>.from(
                json["wall_posts"]!.map((x) => WallPost.fromJson(x))),
        totalPages: json["total_pages"],
      );

  Map<String, dynamic> toJson() => {
        "wall_posts": wallPosts == null
            ? []
            : List<dynamic>.from(wallPosts!.map((x) => x.toJson())),
        "total_pages": totalPages,
      };
}

class WallPost {
  int? id;
  String? postBody;
  String? body;
  dynamic formattedBody;
  String? wallPostType;
  dynamic emojiName;
  bool? isLiked;
  int? totalLikes;
  String? timeAgo;
  String? attachmentUrl;
  String? originalAttachmentUrl;
  bool? isEdited;
  bool? surveyTaken;
  int? totalComments;
  String? imageUrl;
  bool? isVideo;
  String? outsideShowcaseImage;
  String? imgUrlSmall;
  Profile? profile;
  List<WallPost>? children;
  List<SurveyQuestion>? surveyQuestions;
  List<PostComment>? postComments;

  WallPost({
    this.id,
    this.postBody,
    this.body,
    this.formattedBody,
    this.wallPostType,
    this.emojiName,
    this.isLiked,
    this.totalLikes,
    this.timeAgo,
    this.attachmentUrl,
    this.originalAttachmentUrl,
    this.isEdited,
    this.surveyTaken,
    this.totalComments,
    this.imageUrl,
    this.isVideo,
    this.outsideShowcaseImage,
    this.imgUrlSmall,
    this.profile,
    this.children,
    this.surveyQuestions,
    this.postComments,
  });

  factory WallPost.fromJson(Map<String, dynamic> json) => WallPost(
        id: json["id"],
        postBody: json["post_body"],
        body: json["body"],
        formattedBody: json["formatted_body"],
        wallPostType: json["wall_post_type"],
        emojiName: json["emoji_name"],
        isLiked: json["is_liked"],
        totalLikes: json["total_likes"],
        timeAgo: json["time_ago"],
        attachmentUrl: json["attachment_url"],
        originalAttachmentUrl: json["original_attachment_url"],
        isEdited: json["is_edited"],
        surveyTaken: json["survey_taken"],
        totalComments: json["total_comments"],
        imageUrl: json["image_url"],
        isVideo: json["is_video"],
        outsideShowcaseImage: json["outside_showcase_image"],
        imgUrlSmall: json["img_url_small"],
        profile:
            json["profile"] == null ? null : Profile.fromJson(json["profile"]),
        children: json["children"] == null
            ? []
            : List<WallPost>.from(
                json["children"]!.map((x) => WallPost.fromJson(x))),
        surveyQuestions: json["survey_questions"] == null
            ? []
            : List<SurveyQuestion>.from(json["survey_questions"]!
                .map((x) => SurveyQuestion.fromJson(x))),
        postComments: json["post_comments"] == null
            ? []
            : List<PostComment>.from(
                json["post_comments"]!.map((x) => PostComment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "post_body": postBody,
        "body": body,
        "formatted_body": formattedBody,
        "wall_post_type": wallPostType,
        "emoji_name": emojiName,
        "is_liked": isLiked,
        "total_likes": totalLikes,
        "time_ago": timeAgo,
        "attachment_url": attachmentUrl,
        "original_attachment_url": originalAttachmentUrl,
        "is_edited": isEdited,
        "survey_taken": surveyTaken,
        "total_comments": totalComments,
        "image_url": imageUrl,
        "is_video": isVideo,
        "outside_showcase_image": outsideShowcaseImage,
        "img_url_small": imgUrlSmall,
        "profile": profile?.toJson(),
        "children": children == null
            ? []
            : List<dynamic>.from(children!.map((x) => x.toJson())),
        "survey_questions": surveyQuestions == null
            ? []
            : List<dynamic>.from(surveyQuestions!.map((x) => x.toJson())),
        "post_comments": postComments == null
            ? []
            : List<dynamic>.from(postComments!.map((x) => x.toJson())),
      };
}

class PostComment {
  int? id;
  String? date;
  String? formattedBody;
  String? fullName;
  int? profileId;
  String? dp;
  String? content;

  PostComment({
    this.id,
    this.date,
    this.formattedBody,
    this.fullName,
    this.profileId,
    this.dp,
    this.content,
  });

  factory PostComment.fromJson(Map<String, dynamic> json) => PostComment(
        id: json["id"],
        date: json["date"],
        formattedBody: json["formatted_body"],
        fullName: json["full_name"],
        profileId: json["profile_id"],
        dp: json["dp"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date": date,
        "formatted_body": formattedBody,
        "full_name": fullName,
        "profile_id": profileId,
        "dp": dp,
        "content": content,
      };
}

class Profile {
  int? id;
  String? firstName;
  String? dpUrlSmall;
  String? fullName;
  dynamic deletedAt;

  Profile({
    this.id,
    this.firstName,
    this.dpUrlSmall,
    this.fullName,
    this.deletedAt,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        firstName: json["first_name"],
        dpUrlSmall: json["dp_url_small"],
        fullName: json["full_name"],
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "dp_url_small": dpUrlSmall,
        "full_name": fullName,
        "deleted_at": deletedAt,
      };
}

class SurveyQuestion {
  int? id;
  String? text;
  String? questionType;
  bool? required;
  List<SurveyOption>? surveyOptions;
  List<SurveyResponse>? surveyResponses;

  SurveyQuestion({
    this.id,
    this.text,
    this.questionType,
    this.required,
    this.surveyOptions,
    this.surveyResponses,
  });

  factory SurveyQuestion.fromJson(Map<String, dynamic> json) => SurveyQuestion(
        id: json["id"],
        text: json["text"],
        questionType: json["question_type"],
        required: json["required"],
        surveyOptions: json["survey_options"] == null
            ? []
            : List<SurveyOption>.from(
                json["survey_options"]!.map((x) => SurveyOption.fromJson(x))),
        surveyResponses: json["survey_responses"] == null
            ? []
            : List<SurveyResponse>.from(json["survey_responses"]!
                .map((x) => SurveyResponse.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "question_type": questionType,
        "required": required,
        "survey_options": surveyOptions == null
            ? []
            : List<dynamic>.from(surveyOptions!.map((x) => x.toJson())),
        "survey_responses": surveyResponses == null
            ? []
            : List<dynamic>.from(surveyResponses!.map((x) => x.toJson())),
      };
}

class SurveyOption {
  int? id;
  int? surveyQuestionId;
  String? text;

  SurveyOption({
    this.id,
    this.surveyQuestionId,
    this.text,
  });

  factory SurveyOption.fromJson(Map<String, dynamic> json) => SurveyOption(
        id: json["id"],
        surveyQuestionId: json["survey_question_id"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "survey_question_id": surveyQuestionId,
        "text": text,
      };
}

class SurveyResponse {
  int? id;
  dynamic text;
  int? surveyOptionId;
  Profile? profile;
  SurveyOption? surveyOption;

  SurveyResponse({
    this.id,
    this.text,
    this.surveyOptionId,
    this.profile,
    this.surveyOption,
  });

  factory SurveyResponse.fromJson(Map<String, dynamic> json) => SurveyResponse(
        id: json["id"],
        text: json["text"],
        surveyOptionId: json["survey_option_id"],
        profile:
            json["profile"] == null ? null : Profile.fromJson(json["profile"]),
        surveyOption: json["survey_option"] == null
            ? null
            : SurveyOption.fromJson(json["survey_option"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "survey_option_id": surveyOptionId,
        "profile": profile?.toJson(),
        "survey_option": surveyOption?.toJson(),
      };
}
