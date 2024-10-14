import 'package:social_app/core/utils/app_import.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppStyles.style32),
      centerTitle: true,
      leading: Assets.icons.notifications.svg(
        fit: BoxFit.scaleDown,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight); // Return the default height for AppBar
}
