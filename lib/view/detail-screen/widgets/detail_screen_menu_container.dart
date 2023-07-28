import 'package:flutter/material.dart';

import '../../../utils/responsive_util.dart';

class BuildMenuContainer extends StatelessWidget {
  final bool isSelected;
  final Image images;
  const BuildMenuContainer({
    required this.images,
    required this.isSelected,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: isSelected ? const Color(0xffBAD7DA) : Colors.white),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      width: Responsive.w(73, context),
      height: Responsive.h(73, context),
      child: images,
    );
  }
}
