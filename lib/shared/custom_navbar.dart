import 'package:social_app/core/utils/app_import.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12),
        ), // Border radius
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, -2), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: ColorName.whiteLight,
            items: [
              BottomNavigationBarItem(
                icon: Assets.icons.home.svg(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.explore.svg(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.userAvatar.svg(),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
