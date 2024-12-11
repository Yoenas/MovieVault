import 'package:movie_vault/src/commons.dart';

class ExpandableText extends StatelessWidget {
  ExpandableText({
    super.key,
    required this.content,
    this.backgroundColor = MyColors.white,
    TextStyle? contentStyle,
    EdgeInsets? padding,
  })  : _contentStyle =
            contentStyle ?? TextStyle(color: MyColors.black, fontSize: 16),
        _padding = padding ?? EdgeInsets.all(4);

  final String content;
  final Color? backgroundColor;
  final TextStyle? _contentStyle;
  final EdgeInsets? _padding;

  final ValueNotifier<bool> expanded = ValueNotifier(false);
  final int maxLinesToShow = 5;

  @override
  Widget build(BuildContext context) {
    final TextSpan textSpan = TextSpan(
      text: content,
      style: _contentStyle,
    );

    final TextPainter textPainter = TextPainter(
      text: textSpan,
      maxLines: expanded.value ? null : maxLinesToShow,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: MediaQuery.of(context).size.width);

    final int numberOfLines = textPainter.computeLineMetrics().length;

    return ValueListenableBuilder(
      valueListenable: expanded,
      builder: (context, value, _) {
        return Container(
          color: backgroundColor,
          padding: _padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (!expanded.value && numberOfLines >= maxLinesToShow) {
                    return Stack(
                      children: [
                        Text(
                          content,
                          maxLines: maxLinesToShow,
                          overflow: TextOverflow.ellipsis,
                          style: _contentStyle,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            color: backgroundColor,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('... ', style: _contentStyle),
                                SeeMoreLessWidget(
                                  textOption: 'See More',
                                  type: 1,
                                  onSeeMoreLessTap: () {
                                    expanded.value = true;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  if (numberOfLines < maxLinesToShow) {
                    return Text(
                      content,
                      maxLines: maxLinesToShow,
                      overflow: TextOverflow.ellipsis,
                      style: _contentStyle,
                    );
                  }
                  return Column(
                    children: [
                      Text(
                        content,
                        style: _contentStyle,
                      ),
                      if (expanded.value && numberOfLines >= maxLinesToShow)
                        SeeMoreLessWidget(
                          textOption: 'See Less',
                          type: 2,
                          onSeeMoreLessTap: () {
                            expanded.value = false;
                          },
                        ),
                    ],
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}

class SeeMoreLessWidget extends StatelessWidget {
  const SeeMoreLessWidget({
    super.key,
    required this.textOption,
    required this.type,
    required this.onSeeMoreLessTap,
  });

  final String textOption;
  final int type;
  final void Function() onSeeMoreLessTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSeeMoreLessTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            textOption,
            style: textThemeUtil(context)
                .bodyLarge
                ?.copyWith(color: MyColors.primary),
          ),
          Icon(
            (type == 1) ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
            color: Colors.blue,
            size: 17.5,
          ),
        ],
      ),
    );
  }
}
