class AllComments {
  final int id;
  final String date;
  final String formattedBody;
  final String fullName;
  final int profileId;
  final String dp;
  final String content;

  AllComments({
    required this.id,
    required this.date,
    required this.formattedBody,
    required this.fullName,
    required this.profileId,
    required this.dp,
    required this.content,
  });

  factory AllComments.fromJson(Map<String, dynamic> json) {
    return AllComments(
      id: json['id'],
      date: json['date'],
      formattedBody: json['formatted_body'],
      fullName: json['full_name'],
      profileId: json['profile_id'],
      dp: json['dp'],
      content: json['content'],
    );
  }
}
