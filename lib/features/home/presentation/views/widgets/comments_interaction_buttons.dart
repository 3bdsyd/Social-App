import 'package:social_app/core/utils/app_import.dart';

class CommentsInteractionButtons extends StatelessWidget {
  const CommentsInteractionButtons({super.key, required this.post});
  final PostsModel post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              FavoriteButton(isFavorite: post.isFavorite, likes: post.likes),
              const SizedBox(width: 12),
              CommentButton(post: post),
            ],
          ),
          post.isSave
              ? Assets.icons.savePostFill.svg()
              : Assets.icons.postSave.svg(),
        ],
      ),
    );
  }
}
