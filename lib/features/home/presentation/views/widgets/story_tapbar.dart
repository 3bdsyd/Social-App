import 'package:social_app/core/utils/app_import.dart';

class TagBar extends StatelessWidget {
  const TagBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorName.white.withOpacity(.8),
        boxShadow: [
          BoxShadow(
            color: ColorName.mineShaft.withOpacity(.1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Assets.icons.tag.svg(
            height: 25,
            width: 25,
          ),
          const SizedBox(width: 10),
          Text(
            'Meditation',
            style: AppStyles.style14.copyWith(
              color: ColorName.deluge,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
