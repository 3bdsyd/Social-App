import 'package:social_app/core/utils/app_import.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Widget? suffixIcon;
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          backgroundColor: const WidgetStatePropertyAll(ColorName.white),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  color: ColorName.blackPearl,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2,
                ),
              ),
            ),
            suffixIcon != null
                ? suffixIcon!
                : Assets.icons.arrowLong.svg(
                    colorFilter: const ColorFilter.mode(
                      ColorName.blackPearl,
                      BlendMode.srcIn,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
