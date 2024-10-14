import 'package:social_app/core/utils/app_import.dart';

class CommentsUserProfile extends StatelessWidget {
  const CommentsUserProfile({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: MediaQuery.sizeOf(context).width / 12,
      width: MediaQuery.sizeOf(context).width / 12,
      decoration: BoxDecoration(
        image: DecorationImage(image: Image.asset(imageUrl).image),
        shape: BoxShape.circle,
      ),
    );
  }
}
