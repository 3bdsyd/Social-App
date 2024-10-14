import 'package:social_app/core/utils/app_import.dart';

class CardPostWidget extends StatelessWidget {
  const CardPostWidget({super.key, required this.post});
  final PostsModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          CommentsUserInfo(post: post),
          const SizedBox(height: 12),
          if (post.images != null) CommentsImageGallery(post: post),
          if (post.title != null) CommentsTitle(post: post),
          const SizedBox(height: 8),
          Divider(color: ColorName.mineShaft.withOpacity(.6)),
          const SizedBox(height: 12),
          CommentsInteractionButtons(post: post),
        ],
      ),
    );
  }
}
