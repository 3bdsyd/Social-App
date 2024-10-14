import 'package:social_app/core/utils/app_import.dart';

// Cubit for managing posts, stories, and comments
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState()); // Initialize the state

  // Save stories to local storage
  Future<void> saveStories(List<StoriesModel> stories) async {
    // Convert stories to JSON and save them
    String storiesJson =
        jsonEncode(stories.map((story) => story.toJson()).toList());
    await SharedPref.setString(AppKey.stories, storiesJson);

    // Emit new state with updated stories
    emit(
      HomeState(
        postsItems: state.postsItems,
        storiesItems: stories, // Updated stories
        commentsItems: state.commentsItems,
      ),
    );
  }

  // Simulate fetching stories
  Future<void> fetchStories() async {
    // Create a list of new story models
    List<StoriesModel> newStories = [
      StoriesModel(userId: 1, imageUrl: Assets.images.person1.path),
      StoriesModel(userId: 2, imageUrl: Assets.images.person2.path),
      StoriesModel(userId: 3, imageUrl: Assets.images.person3.path),
      StoriesModel(userId: 4, imageUrl: Assets.images.person4.path),
      StoriesModel(userId: 5, imageUrl: Assets.images.person5.path),
      StoriesModel(userId: 6, imageUrl: Assets.images.person6.path),
      StoriesModel(userId: 7, imageUrl: Assets.images.person7.path),
    ];

    // Save and emit the new stories
    await saveStories(newStories);
  }

  // Save posts to local storage
  Future<void> savePosts(List<PostsModel> posts) async {
    // Convert posts to JSON and save them
    String postsJson = jsonEncode(posts.map((post) => post.toJson()).toList());
    await SharedPref.setString(AppKey.posts, postsJson);

    // Emit new state with updated posts
    emit(HomeState(
      postsItems: posts, // Updated posts
      storiesItems: state.storiesItems,
      commentsItems: state.commentsItems,
    ));
  }

  // Simulate fetching posts
  Future<void> fetchPosts() async {
    // Create a list of new post models
    List<PostsModel> newPosts = [
      PostsModel(
        id: 1,
        imageUrl: Assets.images.person1.path,
        username: 'John Doe',
        time: '2h ago',
        isSave: true,
        likes: '120',
        comments: '45',
        title:
            'Stopped by @zoesugg today with goosey girl to see @kyliecosmetics & @kylieskin 💕 wow what a dream!!!!!!!! It’s the best experience we have!',
        isFavorite: true,
      ),
      PostsModel(
        id: 2,
        imageUrl: Assets.images.person2.path,
        username: 'Jane Smith',
        time: '1h ago',
        isSave: false,
        likes: '95',
        comments: '30',
        images: [
          Assets.images.post1.path,
          Assets.images.post2.path,
          Assets.images.post3.path,
        ],
        isFavorite: true,
      ),
      PostsModel(
        id: 3,
        imageUrl: Assets.images.person3.path,
        username: 'Mike Johnson',
        time: '3h ago',
        isSave: true,
        likes: '210',
        comments: '80',
        title:
            'Stopped by @john_doe today with @emily to check out @bestcafe & @amazingfood 💕 what a fantastic day!!! It’s the best memory ever!',
        isFavorite: false,
      ),
      // Add more fake data here
      PostsModel(
        id: 4,
        imageUrl: Assets.images.person4.path,
        username: 'Emily Davis',
        time: '5h ago',
        isSave: true,
        likes: '300',
        comments: '150',
        images: [
          Assets.images.post4.path,
        ],
        isFavorite: true,
      ),
      PostsModel(
        id: 5,
        imageUrl: Assets.images.person5.path,
        username: 'Chris Brown',
        time: '2d ago',
        isSave: false,
        likes: '450',
        comments: '220',
        title:
            'Had a wonderful time with @alex_smith and @lisa at @theatrehouse & @nightshow 💕 wow, such an unforgettable experience!!!! Can\'t wait for the next one!',
        isFavorite: true,
      ),
      PostsModel(
        id: 6,
        imageUrl: Assets.images.person5.path,
        username: 'Chris Brown',
        time: '2d ago',
        isSave: false,
        likes: '450',
        comments: '220',
        images: [
          Assets.images.post5.path,
        ],
        isFavorite: false,
      ),
      PostsModel(
        id: 7,
        imageUrl: Assets.images.person5.path,
        username: 'Chris Brown',
        time: '2d ago',
        isSave: false,
        likes: '450',
        comments: '220',
        title:
            'Had a wonderful time with @alex_smith and @lisa at @theatrehouse & @nightshow 💕 wow, such an unforgettable experience!!!! Can\'t wait for the next one!',
        isFavorite: false,
      ),
      PostsModel(
        id: 8,
        imageUrl: Assets.images.person5.path,
        username: 'Chris Brown',
        time: '2d ago',
        isSave: false,
        likes: '450',
        comments: '220',
        title:
            'Had a wonderful time with @alex_smith and @lisa at @theatrehouse & @nightshow 💕 wow, such an unforgettable experience!!!! Can\'t wait for the next one!',
        isFavorite: true,
      ),
    ];

    // Save and emit the new posts
    await savePosts(newPosts);
  }

  // Save comments to local storage
  Future<void> saveComments(Map<int, List<CommentsModel>> commentsMap) async {
    // Convert each comments array for each postId to JSON
    Map<String, String> commentsJsonMap = commentsMap.map((postId, comments) {
      return MapEntry(postId.toString(),
          jsonEncode(comments.map((comment) => comment.toJson()).toList()));
    });

    // Save each postId with its comments in storage
    commentsJsonMap.forEach((postId, commentsJson) async {
      await SharedPref.setString('${AppKey.comments}_$postId', commentsJson);
    });

    // Flatten all comments from the map into a single list
    List<CommentsModel> allComments =
        commentsMap.values.expand((commentsList) => commentsList).toList();

    // Emit new state with updated comments
    emit(
      HomeState(
        postsItems: state.postsItems,
        storiesItems: state.storiesItems,
        commentsItems: allComments, // Use all comments from the map
      ),
    );
  }

  // Simulate fetching comments
  Future<void> fetchComments() async {
    // Create a map of new comments for each postId
    Map<int, List<CommentsModel>> newComments = {
      1: [
        CommentsModel(
          userId: 1,
          imageUrl: Assets.images.person1.path,
          username: 'John Doe',
          time: '2h ago',
          isFavorite: true,
          comment:
              'This is an amazing post! I really appreciate the insight you provided. Looking forward to more great content from you!',
        ),
        CommentsModel(
          userId: 2,
          imageUrl: Assets.images.person2.path,
          username: 'Jane Smith',
          time: '1h ago',
          isFavorite: true,
          comment:
              'I couldn’t agree more with your points. Very well written and informative!',
        ),
        CommentsModel(
          userId: 5,
          imageUrl: Assets.images.person5.path,
          username: 'Chris Brown',
          time: '2d ago',
          isFavorite: true,
          comment:
              'This was a really interesting read. It gave me a lot to think about, and I’m excited to see where this conversation goes!',
        ),
      ],
      2: [
        CommentsModel(
          userId: 3,
          imageUrl: Assets.images.person3.path,
          username: 'Mike Johnson',
          time: '3h ago',
          isFavorite: false,
          comment:
              'I enjoyed reading your post, but I think there’s another side to the argument that could be considered.',
        ),
        CommentsModel(
          userId: 4,
          imageUrl: Assets.images.person4.path,
          username: 'Emily Davis',
          time: '5h ago',
          isFavorite: true,
          comment:
              'Great content! I especially loved the way you presented your ideas. Keep up the awesome work!',
        ),
      ],
      3: [
        CommentsModel(
          userId: 6,
          imageUrl: Assets.images.person5.path,
          username: 'Chris Brown',
          time: '2d ago',
          isFavorite: false,
          comment:
              'I found this post helpful, but I was hoping for a bit more detail on certain points.',
        ),
        CommentsModel(
          userId: 7,
          imageUrl: Assets.images.person5.path,
          username: 'Chris Brown',
          time: '2d ago',
          isFavorite: true,
          comment:
              'Awesome post! I learned a lot from your perspective, and I think it’s important to share these insights with others.',
        ),
      ],
    };

    // Save and emit the new comments
    await saveComments(newComments);
  }

  // Fetch comments for a specific postId
  Future<List<CommentsModel>> getCommentsByPostId(int postId) async {
    String? commentsJson = SharedPref.getString('${AppKey.comments}_$postId');

    if (commentsJson != null) {
      List<dynamic> decodedJson = jsonDecode(commentsJson);
      List<CommentsModel> commentsList = decodedJson.map((comment) {
        return CommentsModel.fromJson(comment);
      }).toList();

      return commentsList;
    } else {
      return [];
    }
  }
}
