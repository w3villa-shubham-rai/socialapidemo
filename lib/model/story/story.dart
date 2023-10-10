

import 'dart:convert';

Storymodel storymodelFromJson(String str) => Storymodel.fromJson(json.decode(str));

String storymodelToJson(Storymodel data) => json.encode(data.toJson());

class Storymodel {
    bool? success;
    List<Datum>? data;
    List<Datum>? topThree;

    Storymodel({
        this.success,
        this.data,
        this.topThree,
    });

    factory Storymodel.fromJson(Map<String, dynamic> json) => Storymodel(
        success: json["success"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        topThree: json["top_three"] == null ? [] : List<Datum>.from(json["top_three"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "top_three": topThree == null ? [] : List<dynamic>.from(topThree!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    String? fullName;
    String? dpUrlSmall;
    DateTime? actualDate;
    DateTime? sortedDate;
    SortedType? sortedType;
    Message? message;

    Datum({
        this.id,
        this.fullName,
        this.dpUrlSmall,
        this.actualDate,
        this.sortedDate,
        this.sortedType,
        this.message,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        fullName: json["full_name"],
        dpUrlSmall: json["dp_url_small"],
        actualDate: json["actual_date"] == null ? null : DateTime.parse(json["actual_date"]),
        sortedDate: json["sorted_date"] == null ? null : DateTime.parse(json["sorted_date"]),
        sortedType: sortedTypeValues.map[json["sorted_type"]]!,
        message: messageValues.map[json["message"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "dp_url_small": dpUrlSmall,
        "actual_date": "${actualDate!.year.toString().padLeft(4, '0')}-${actualDate!.month.toString().padLeft(2, '0')}-${actualDate!.day.toString().padLeft(2, '0')}",
        "sorted_date": "${sortedDate!.year.toString().padLeft(4, '0')}-${sortedDate!.month.toString().padLeft(2, '0')}-${sortedDate!.day.toString().padLeft(2, '0')}",
        "sorted_type": sortedTypeValues.reverse[sortedType],
        "message": messageValues.reverse[message],
    };
}

enum Message {
    BIRTHDAY,
    THE_13_TH_WORK_ANNIVERSARY,
    THE_1_ST_WORK_ANNIVERSARY,
    THE_27_TH_WORK_ANNIVERSARY,
    THE_2_ND_WORK_ANNIVERSARY,
    THE_3_RD_WORK_ANNIVERSARY,
    THE_54_TH_WORK_ANNIVERSARY
}

final messageValues = EnumValues({
    "Birthday": Message.BIRTHDAY,
    "13th work anniversary": Message.THE_13_TH_WORK_ANNIVERSARY,
    "1st work anniversary": Message.THE_1_ST_WORK_ANNIVERSARY,
    "27th work anniversary": Message.THE_27_TH_WORK_ANNIVERSARY,
    "2nd work anniversary": Message.THE_2_ND_WORK_ANNIVERSARY,
    "3rd work anniversary": Message.THE_3_RD_WORK_ANNIVERSARY,
    "54th work anniversary": Message.THE_54_TH_WORK_ANNIVERSARY
});

enum SortedType {
    DOB,
    DOJ
}

final sortedTypeValues = EnumValues({
    "dob": SortedType.DOB,
    "doj": SortedType.DOJ
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
