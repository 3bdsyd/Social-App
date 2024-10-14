import 'package:social_app/core/utils/app_import.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const SizedBox(height: 100),
                Expanded(
                  child: _buildLoginContainer(
                      context), // Calls a function to build the login form container
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Function to build the main login container with styling
  Widget _buildLoginContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorName.mirage,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          _buildAnimatedText(),
          const SizedBox(height: 50),
          _buildLoginForm(context),
          const Expanded(
            child: SizedBox(height: 20),
          ),
          const LoginButtonWidget(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Function to build the animated welcome text
  Widget _buildAnimatedText() {
    return AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText(
          'Welcome back',
          textStyle: AppStyles.style32,
        ),
      ],
      isRepeatingAnimation: true,
      repeatForever: false,
      totalRepeatCount: 1,
    );
  }

  // Function to build the login form using BlocBuilder to manage the state
  Widget _buildLoginForm(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        // If the state is loading, show a loading animation, otherwise show the form
        return state is LoginLoading
            ? Assets.lottie.loadingLogin
                .lottie() // Shows a loading animation when in loading state
            : const Column(
                children: [
                  LoginFormWidget(), // The login form fields (username, password, etc.)
                  SizedBox(height: 12),
                  LoginButtonRegisterWidget(),
                ],
              );
      },
    );
  }
}
