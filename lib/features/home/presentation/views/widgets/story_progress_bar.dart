import 'package:social_app/core/utils/app_import.dart';

class StoryProgressBar extends StatelessWidget {
  final AnimationController controller;

  const StoryProgressBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return LinearProgressIndicator(
            value: controller.value,
            backgroundColor: ColorName.white.withOpacity(.3),
            color: ColorName.white.withOpacity(.7),
          );
        },
      ),
    );
  }
}
