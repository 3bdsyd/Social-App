import 'package:social_app/core/utils/app_import.dart';

@RoutePage() // Annotation indicating this class is a route page
class LoginScreen extends StatelessWidget implements AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: context
          .read<LoginCubit>()
          .scaffoldKey, // Uses the scaffold key from LoginCubit to show snackbars and messages
      child: const Scaffold(
        body:
            LoginBodyWidget(), // The main content of the login screen, displayed via the LoginBodyWidget
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    // This method is used to wrap the route with additional functionality
    return BlocProvider(
      create: (context) => LoginCubit(LoginRepoImp()),
      child: this,
    );
  }
}
