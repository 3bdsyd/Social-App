import 'package:social_app/features/home/data/models/comments_model.dart';
import 'package:social_app/features/home/data/models/posts_model.dart';
import 'package:social_app/features/home/data/models/stories_model.dart';

class HomeState {
  final List<PostsModel> postsItems; // List of posts
  final List<StoriesModel> storiesItems; // List of stories
  final List<CommentsModel> commentsItems; // List of comments

  HomeState({
    this.postsItems = const [],
    this.storiesItems = const [],
    this.commentsItems = const [],
  });
}
