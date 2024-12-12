class Post {
  Post(
      {required this.body,
      required this.id,
      required this.title,
      required this.userId});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
      body: json["body"],
      id: json["id"],
      title: json["title"],
      userId: json["userId"]);

  Map<String, dynamic> toMap() {
    return {'body': body, 'id': id, 'title': title, 'userId': userId};
  }

  String body;
  int id;
  String title;
  int userId;
}
