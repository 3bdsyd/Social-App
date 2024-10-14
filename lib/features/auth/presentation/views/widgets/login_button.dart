import 'package:social_app/core/utils/app_import.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return CustomButtonWidget(
          title: 'Login',
          onTap: () => context.read<LoginCubit>().postLogin(),
          suffixIcon: state is LoginLoading
              ? const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: ColorName.blackPearl,
                    strokeWidth: 2,
                  ),
                )
              : null,
        );
      },
    );
  }
}
