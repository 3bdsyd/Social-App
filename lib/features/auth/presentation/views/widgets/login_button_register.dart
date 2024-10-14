import 'package:social_app/core/utils/app_import.dart';

class LoginButtonRegisterWidget extends StatelessWidget {
  const LoginButtonRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Don’t have an account yet? ',
            style: AppStyles.style14.copyWith(
              color: ColorName.white,
            ),
          ),
          TextSpan(
            text: 'Sign up',
            style: AppStyles.style14.copyWith(
              color: ColorName.white,
              decoration: TextDecoration.underline,
              decorationColor: ColorName.white,
            ),
          ),
        ],
      ),
    );
  }
}
