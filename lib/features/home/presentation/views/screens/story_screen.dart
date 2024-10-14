import 'package:social_app/core/utils/app_import.dart';

@RoutePage()
class StoryScreen extends StatelessWidget {
  const StoryScreen(@PathParam('id') this.id, {super.key});
  final int id;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StoryBody(id: id),
      ),
    );
  }
}
