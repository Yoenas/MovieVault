import 'package:movie_vault/src/commons.dart';

class CenterTitleAppBar extends StatelessWidget {
  const CenterTitleAppBar(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 25,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 25,
              alignment: Alignment.center,
              child: Text(
                text,
                style: textThemeUtil(context)
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.centerLeft,
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
