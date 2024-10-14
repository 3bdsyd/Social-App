import 'package:social_app/core/utils/app_import.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton(
      {super.key, required this.isFavorite, required this.likes});
  final bool isFavorite;
  final String likes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isFavorite
            ? const Icon(Icons.favorite, color: Colors.red)
            : Assets.icons.favoriteBorder.svg(),
        const SizedBox(width: 4),
        Text(
          likes,
          style: const TextStyle(
            fontSize: 14,
            color: ColorName.mineShaft,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
