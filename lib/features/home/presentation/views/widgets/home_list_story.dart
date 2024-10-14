import 'package:social_app/core/utils/app_import.dart';

class HomeListStory extends StatelessWidget {
  final double scrollOffset;
  final VoidCallback onTap;

  const HomeListStory({
    super.key,
    required this.scrollOffset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        final stories =
            state.storiesItems; // Get the list of stories from state
        return AnimatedContainer(
          constraints: const BoxConstraints(
            minWidth: 60,
          ),
          height: scrollOffset == 0 ? 100 : 0,
          margin: const EdgeInsets.symmetric(horizontal: 13),
          padding: const EdgeInsets.only(top: 9, bottom: 9),
          decoration: BoxDecoration(
            color: ColorName.mirage,
            borderRadius: BorderRadius.circular(48),
          ),
          clipBehavior: Clip.hardEdge,
          duration: Durations.long1,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => {
                  context.router.push(StoryRoute(id: stories[index].userId)),
                },
                child: Hero(
                    tag: stories[index].userId,
                    flightShuttleBuilder: (flightContext, animation,
                        flightDirection, fromHeroContext, toHeroContext) {
                      return ScaleTransition(
                        scale: animation.drive(
                          Tween<double>(begin: 0.8, end: 1.0).chain(
                            CurveTween(curve: Curves.easeInOut),
                          ),
                        ),
                        child: toHeroContext.widget,
                      );
                    },
                    child: Container(
                      width: 70,
                      margin: EdgeInsets.only(left: index == 0 ? 10 : 0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            stories[index].imageUrl,
                            fit: BoxFit.fill,
                          ).image,
                        ),
                        border: Border.all(
                          color: ColorName.white,
                          width: 2.0,
                        ),
                      ),
                    )),
              );
            },
            separatorBuilder: (context, _) => const SizedBox(width: 15),
            itemCount: stories.length,
          )
              .animate()
              .slideX(begin: -1, duration: const Duration(milliseconds: 500))
              .fadeIn(delay: const Duration(milliseconds: 100)),
        );
      }),
    );
  }
}
