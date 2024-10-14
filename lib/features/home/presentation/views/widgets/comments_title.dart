import 'package:social_app/core/utils/app_import.dart';

class CommentsTitle extends StatelessWidget {
  const CommentsTitle({super.key, required this.post});
  final PostsModel post;

  @override
  Widget build(BuildContext context) {
    final regex = RegExp(r'(@\w+)');
    final parts = post.title?.split(regex);
    final matches = regex
        .allMatches(post.title ?? '')
        .map((match) => match.group(0))
        .toList();

    return Text.rich(
      TextSpan(
        children: [
          for (int i = 0; i < parts!.length; i++) ...[
            TextSpan(text: parts[i]),
            if (i < matches.length)
              TextSpan(
                text: matches[i],
                style: AppStyles.style14.copyWith(fontWeight: FontWeight.bold),
              ),
          ]
        ],
      ),
      style: AppStyles.style14,
    );
  }
}
