import 'package:movie_vault/src/commons.dart';

class CachedImageNetworkBuilder extends StatelessWidget {
  const CachedImageNetworkBuilder(
    this.imageUrl, {
    super.key,
    required this.height,
    required this.width,
    this.onImageBuilder,
  });

  final String? imageUrl;
  final double height;
  final double width;
  final Widget Function(BuildContext context, ImageProvider imageProvider)?
      onImageBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CachedNetworkImage(
        imageUrl: 'https://image.tmdb.org/t/p/w500$imageUrl',
        imageBuilder: onImageBuilder,
        fit: BoxFit.cover,
        placeholder: (context, url) => SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: CircularProgressIndicator(
              color: MyColors.primary,
            ),
          ),
        ),
        errorWidget: (context, url, error) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: (height >= 75) ? 75 : 30,
              width: (width >= 75) ? 75 : 30,
              child: SvgPicture.asset('assets/svg/logo.svg'),
            ),
            const SizedBox(height: 4),
            if (height >= 75 && width >= 74)
              Text(
                'No Image',
                textAlign: TextAlign.center,
                style: textThemeUtil(context)
                    .bodySmall
                    ?.copyWith(color: MyColors.error),
              ),
          ],
        ),
      ),
    );
  }
}
