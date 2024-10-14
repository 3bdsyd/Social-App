import 'package:social_app/core/utils/app_import.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginCubit loginCubit = context.read<LoginCubit>();
    return Form(
      key: loginCubit.formsKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'USERNAME',
            style: AppStyles.style14.copyWith(
              color: ColorName.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          CustomTextField(
            prefixIcon: Assets.icons.email,
            hintText: 'Enter your username here',
            controller: loginCubit.username,
            label: 'Username',
            autofillHints: const [AutofillHints.name],
            textInputType: TextInputType.name,
            validator: (username) =>
                FormsValidate.getUsernameValidate(username),
            enabled: true,
          ),
          const SizedBox(height: 25),
          Text(
            'PASSWORD',
            style: AppStyles.style14.copyWith(
              color: ColorName.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
            return CustomTextField(
              prefixIcon: Assets.icons.locked,
              hintText: 'Place the password here',
              controller: loginCubit.password,
              label: 'Password',
              obscureText: loginCubit.isHidePassword,
              suffixIcon: loginCubit.isHidePassword
                  ? Assets.icons.showPassword
                  : Assets.icons.hidePassword,
              suffixFunction: () => loginCubit.toggleShowPassword(),
              autofillHints: const [AutofillHints.password],
              textInputType: TextInputType.visiblePassword,
              validator: (password) =>
                  FormsValidate.getPasswordValidate(password),
              enabled: true,
            );
          }),
        ],
      ),
    );
  }
}
