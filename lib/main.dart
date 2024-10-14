import 'package:social_app/core/utils/app_import.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize PreferenceUtils instance.
  await SharedPref.init();
  runApp(
    const SocialApp(), // Wrap your app
  );
}

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      theme: ThemeData(
        fontFamily: FontFamily.glory,
        scaffoldBackgroundColor: ColorName.blackPearl,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorName.blackPearl,
        ),
      ),
    );
  }
}
