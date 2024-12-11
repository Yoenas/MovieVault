import 'package:movie_vault/src/commons.dart';

class RatingScore extends StatelessWidget {
  const RatingScore({
    super.key,
    required this.voteAverage,
    this.width = 50,
    this.height = 50,
    this.fontSize = 13,
    this.strokeWidth = 3,
    this.strokeAlign = 1.5,
  });

  final double voteAverage;
  final double? width;
  final double? height;
  final double? fontSize;
  final double strokeWidth;
  final double strokeAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: MyColors.primary,
        shape: BoxShape.circle,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: CircularProgressIndicator(
              // value rating score
              value: voteAverage / 10,
              strokeWidth: strokeWidth,
              strokeAlign: strokeAlign,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          // text percentage rating score
          Text(
            '${(voteAverage / 10 * 100).toInt()}%',
            style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2),
          ),
        ],
      ),
    );
  }
}
