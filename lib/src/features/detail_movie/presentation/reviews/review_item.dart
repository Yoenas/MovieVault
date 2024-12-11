import 'package:movie_vault/src/commons.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
    required this.review,
  });

  final ReviewData review;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          color: MyColors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // image profil author
                    if (review.authorDetails.avatarPath.isNotEmpty)
                      CachedImageNetworkBuilder(
                        review.authorDetails.avatarPath,
                        height: 45,
                        width: 45,
                        onImageBuilder: (context, imageProvider) {
                          return CircleAvatar(
                            backgroundImage: imageProvider,
                          );
                        },
                      ),
                    if (review.authorDetails.avatarPath.isEmpty)
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        child: SvgPicture.asset(
                          'assets/svg/bottom_nav/ic_user_active.svg',
                          width: 35,
                          height: 35,
                        ),
                      ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // author
                          Text(
                            review.author,
                            style: textThemeUtil(context)
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Written on - ${review.updatedAt.formatDateToddMMyyy()}',
                            style: textThemeUtil(context).bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Rating',
                          style: textThemeUtil(context)
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          review.authorDetails.rating == 0
                              ? '-'
                              : review.authorDetails.rating.toString(),
                          style: textThemeUtil(context).bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ExpandableText(
                content: review.content,
              )
            ],
          ),
        ),
      ),
    );
  }
}
