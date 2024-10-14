import 'package:social_app/core/utils/app_import.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.icons.favoriteBorder.svg(
      colorFilter: const ColorFilter.mode(
        ColorName.white,
        BlendMode.srcIn,
      ),
      height: 30,
      width: 30,
    );
  }
}
