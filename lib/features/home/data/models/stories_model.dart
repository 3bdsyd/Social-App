class StoriesModel {
  final int userId;
  final String imageUrl;

  StoriesModel({required this.userId, required this.imageUrl});

  factory StoriesModel.fromJson(Map<String, dynamic> json) {
    return StoriesModel(
      userId: json['userId'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': userId,
      'imageUrl': imageUrl,
    };
  }
}
