import 'package:social_app/core/utils/app_import.dart';

@RoutePage()
class HomeScreen extends StatelessWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: 'SOCIALLY'),
      bottomNavigationBar: CustomNavbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: HomeBodyWidget(),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    // This method is used to wrap the route with additional functionality
    return BlocProvider(
      create: (context) => HomeCubit()
        ..fetchStories()
        ..fetchPosts()
        ..fetchComments(),
      child: this,
    );
  }
}
