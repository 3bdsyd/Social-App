import 'package:social_app/core/utils/app_import.dart';

class CommentsUserInfo extends StatelessWidget {
  const CommentsUserInfo({super.key, required this.post});
  final PostsModel post;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommentsUserProfile(imageUrl: post.imageUrl),
        const SizedBox(width: 10),
        Expanded(
          child: CommentsUserInfoText(username: post.username, time: post.time),
        ),
      ],
    );
  }
}
