import 'package:social_app/core/utils/app_import.dart';
part 'app_router.gr.dart';

@AutoRouterConfig() // Annotation to indicate this class is for AutoRoute configuration
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // Define the application routes
        AutoRoute(
            page: const PageInfo(LoginRoute.name), // Route for the Login page
            initial: true
            // initial: SharedPref.getString(AppKey.userId) ==
            //     null, // Determine if this should be the initial route based on user login state
            ),
        CustomRoute(
          page: HomeRoute.page, // Route for the Home page
          transitionsBuilder: TransitionsBuilders
              .slideLeft, // Animation for transitioning to this route
          durationInMilliseconds: 400, // Duration for the transition
          // initial: SharedPref.getString(AppKey.userId) !=
          //     null, // Determine if this should be the initial route based on user login state
        ),
        CustomRoute(
          path:
              '/Story/:id', // Route for the Story page with a dynamic path parameter for the story ID
          page: StoryRoute.page, // Page to display for this route
        ),
      ];
}
