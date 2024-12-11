import 'package:flutter/material.dart';

import '../style_guide/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Center(
        child: CircularProgressIndicator(color: MyColors.primary),
      ),
    );
  }
}
