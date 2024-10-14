import 'package:social_app/core/utils/app_import.dart';

class StoryBody extends StatefulWidget {
  const StoryBody({
    super.key,
    required this.id,
  });
  final int id;
  @override
  State<StoryBody> createState() => _StoryBodyState();
}

class _StoryBodyState extends State<StoryBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..forward().whenComplete(() {
        context.router.popForced(); // Close the story after 5 seconds
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          // Background Image
          Hero(
            tag: widget.id,
            child: const StoryImage(),
          ),
          Positioned.fill(
            child: Container(
              color: ColorName.black.withOpacity(.2),
            ),
          ),
          // Top Progress Bar
          StoryProgressBar(controller: _controller),
          // User Info (Name and Time)
          const Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: UserInfo(),
          ),
          // Tag Bar
          const Positioned(
            bottom: 160,
            right: 40,
            child: TagBar(),
          ),
          // Favorite Icon
          const Positioned(
            bottom: 40,
            right: 20,
            child: FavoriteIcon(),
          ),
        ],
      ),
    );
  }
}
