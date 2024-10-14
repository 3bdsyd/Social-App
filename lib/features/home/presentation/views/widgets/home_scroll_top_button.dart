import 'package:social_app/core/utils/app_import.dart';

class HomeScrollTopButton extends StatelessWidget {
  final double scrollOffset;
  final ScrollController controller;

  const HomeScrollTopButton({
    super.key,
    required this.scrollOffset,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 10,
      child: GestureDetector(
        onTap: () {
          controller.animateTo(
            0.0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        },
        child: AnimatedOpacity(
          opacity: scrollOffset > 10 ? 1 : 0,
          duration: Durations.long3,
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorName.blackPearl,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: scrollOffset > 0 ? 1.6 : -1.6,
                  child: Assets.icons.arrowRight.svg(
                    width: 20,
                    colorFilter: const ColorFilter.mode(
                      ColorName.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
