class CommentsModel {
  final int userId;
  final String imageUrl;
  final String username;
  final String time;
  final String comment;
  final bool isFavorite;

  CommentsModel({
    required this.userId,
    required this.imageUrl,
    required this.username,
    required this.time,
    required this.isFavorite,
    required this.comment,
  });

  factory CommentsModel.fromJson(Map<String, dynamic> json) {
    return CommentsModel(
      userId: json['userId'],
      imageUrl: json['imageUrl'],
      username: json['username'],
      time: json['time'],
      isFavorite: json['isFavorite'],
      comment: json['comment'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'imageUrl': imageUrl,
      'username': username,
      'time': time,
      'isFavorite': isFavorite,
      'comment': comment,
    };
  }
}
