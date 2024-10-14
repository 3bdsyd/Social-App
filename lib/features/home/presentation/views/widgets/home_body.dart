import 'package:social_app/core/utils/app_import.dart';

class HomeBodyWidget extends StatefulWidget {
  const HomeBodyWidget({super.key});

  @override
  State<HomeBodyWidget> createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  final ScrollController _verticalScrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _verticalScrollController.addListener(() {
      setState(() {
        _scrollOffset = _verticalScrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            HomeListStory(
              scrollOffset: _scrollOffset,
              onTap: () {
                _verticalScrollController.animateTo(
                  0.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              },
            ),
            Expanded(
              child: HomeListPostView(controller: _verticalScrollController),
            ),
          ],
        ),
        HomeScrollTopButton(
          scrollOffset: _scrollOffset,
          controller: _verticalScrollController,
        ),
      ],
    );
  }
}
