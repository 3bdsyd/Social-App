import 'package:social_app/core/utils/app_import.dart';

class CommentButton extends StatelessWidget {
  const CommentButton({super.key, required this.post});
  final PostsModel post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final comments =
            await context.read<HomeCubit>().getCommentsByPostId(post.id);
        _showCommentBottomSheet(context, comments);
      },
      child: Row(
        children: [
          Assets.icons.comments.svg(),
          const SizedBox(width: 4),
          Text(
            post.comments,
            style: const TextStyle(
              fontSize: 14,
              color: ColorName.mineShaft,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  void _showCommentBottomSheet(
      BuildContext context, List<CommentsModel> comments) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorName.mirage,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return CommentBottomSheet(comments: comments);
      },
    );
  }
}
