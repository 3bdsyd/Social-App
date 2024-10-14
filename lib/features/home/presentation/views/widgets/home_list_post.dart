import 'package:social_app/core/utils/app_import.dart';

class HomeListPostView extends StatelessWidget {
  final ScrollController controller;

  const HomeListPostView({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 250 * 2),
      duration: const Duration(milliseconds: 450),
      child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        final posts = state.postsItems; // Get the list of stories from state
        return ListView.builder(
          controller: controller,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return CardPostWidget(
              post: posts[index],
            ); // Card for each post
          },
        );
      }),
    );
  }
}
