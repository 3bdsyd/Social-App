import 'package:social_app/core/utils/app_import.dart';

class StoryImage extends StatelessWidget {
  const StoryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.story.image(
        width: double.infinity, height: double.infinity, fit: BoxFit.fill);
  }
}
