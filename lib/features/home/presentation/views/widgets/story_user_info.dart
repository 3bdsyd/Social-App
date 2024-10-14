import 'package:social_app/core/utils/app_import.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => context.router.popForced(),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: ColorName.white.withOpacity(.7),
                  boxShadow: [
                    BoxShadow(
                      color: ColorName.mineShaft.withOpacity(.1),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Assets.icons.arrowRight.svg(),
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'Mariano Di Vaio',
              style: TextStyle(
                fontSize: 20,
                color: ColorName.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              '17m',
              style: TextStyle(
                fontSize: 20,
                color: ColorName.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Assets.icons.download.svg(),
      ],
    );
  }
}
