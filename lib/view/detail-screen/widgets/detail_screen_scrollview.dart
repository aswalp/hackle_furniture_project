import 'package:flutter/material.dart';

import '../../../utils/responsive_util.dart';

class BuildImageScrollView extends StatelessWidget {
  const BuildImageScrollView({
    required this.images,
    super.key,
  });
  final Image images;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.w(315, context),
      child: images,
    );
  }
}
