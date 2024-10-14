import 'package:social_app/core/utils/app_import.dart';

class CommentBottomSheet extends StatelessWidget {
  const CommentBottomSheet({super.key, required this.comments});
  final List<CommentsModel> comments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            _buildHeader(),
            const Divider(color: ColorName.mirage),
            Expanded(
              child: comments.isEmpty
                  ? _buildEmptyComments()
                  : _buildCommentList(),
            ),
            const Divider(height: 1),
            _buildCommentInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          height: 4,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.grey[800], borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.only(bottom: 10),
        ),
        const Text(
          'Comments',
          style: TextStyle(
            fontSize: 16,
            color: ColorName.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyComments() {
    return Center(
      child: Text(
        'No comments yet.',
        style: AppStyles.style14.copyWith(
          color: ColorName.white,
        ),
      ),
    );
  }

  Widget _buildCommentList() {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return _buildCommentItem(comments[index], context);
      },
    );
  }

  Widget _buildCommentItem(CommentsModel comment, context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildUserImage(comment.imageUrl, context),
        const SizedBox(width: 10),
        _buildCommentDetails(comment),
        _buildFavoriteIcon(comment.isFavorite),
      ],
    );
  }

  Widget _buildUserImage(String imageUrl, context) {
    return Container(
      alignment: Alignment.topCenter,
      height: MediaQuery.sizeOf(context).width / 10,
      width: MediaQuery.sizeOf(context).width / 10,
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.white),
        image: DecorationImage(
          image: Image.asset(imageUrl).image,
        ),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildCommentDetails(CommentsModel comment) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            comment.username,
            style: const TextStyle(
              fontSize: 16,
              color: ColorName.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            comment.comment,
            style: AppStyles.style14.copyWith(
              fontSize: 16,
              color: ColorName.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              comment.time,
              style: TextStyle(
                fontSize: 10,
                color: ColorName.white.withOpacity(.8),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Divider(thickness: .2, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildFavoriteIcon(bool isFavorite) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isFavorite
            ? const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20,
              )
            : Assets.icons.favoriteBorder.svg(
                height: 20,
                width: 20,
                colorFilter: ColorFilter.mode(
                    ColorName.white.withOpacity(.8), BlendMode.srcIn),
              ),
      ],
    );
  }

  Widget _buildCommentInput() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: ColorName.white,
            controller: TextEditingController(),
            style: AppStyles.style14.copyWith(
              fontSize: 16,
              color: ColorName.white,
            ),
            decoration: InputDecoration(
              hintText: 'Add a comment...',
              hintStyle: AppStyles.style14.copyWith(
                color: ColorName.white,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.send_rounded,
            color: ColorName.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
