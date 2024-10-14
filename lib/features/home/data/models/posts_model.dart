class PostsModel {
  final int id;
  final String imageUrl;
  final String username;
  final String time;
  final String likes;
  final String comments;
  final String? title;
  final List<String>? images;
  final bool isSave;
  final bool isFavorite;

  PostsModel({
    required this.id,
    required this.imageUrl,
    required this.username,
    required this.time,
    required this.isSave,
    required this.likes,
    required this.comments,
    required this.isFavorite,
    this.title,
    this.images,
  });

  factory PostsModel.fromJson(Map<String, dynamic> json) {
    return PostsModel(
      id: json['id'],
      imageUrl: json['imageUrl'],
      username: json['username'],
      time: json['time'],
      isSave: json['isSave'],
      likes: json['likes'],
      comments: json['comments'],
      title: json['title'],
      images: json['images'] != null ? List<String>.from(json['images']) : null,
      isFavorite: json['isFavorite'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imageUrl': imageUrl,
      'username': username,
      'time': time,
      'isSave': isSave,
      'likes': likes,
      'comments': comments,
      'title': title,
      'images': images,
      'isFavorite': isFavorite,
    };
  }
}
