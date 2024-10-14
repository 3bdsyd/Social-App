import 'package:social_app/core/utils/app_import.dart';

class CommentsUserInfoText extends StatelessWidget {
  const CommentsUserInfoText({
    super.key,
    required this.username,
    required this.time,
  });
  final String username;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          username,
          style: const TextStyle(
            fontSize: 16,
            color: ColorName.mineShaft,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          time,
          style: TextStyle(
            fontSize: 14,
            color: ColorName.blackPearl.withOpacity(.6),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
