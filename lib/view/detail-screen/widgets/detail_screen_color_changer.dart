import 'package:flutter/material.dart';

import '../../../utils/responsive_util.dart';

class BuildColorChanger extends StatelessWidget {
  const BuildColorChanger({
    super.key,
    required this.changecolor,
    required this.isSelected,
  });
  final Color changecolor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1.4),
      decoration: BoxDecoration(
        border: Border.all(
            color: isSelected ? Colors.black : Colors.transparent,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.circular(50),
      ),
      width: Responsive.w(20, context),
      height: Responsive.h(20, context),
      child: CircleAvatar(backgroundColor: changecolor),
      // child: ,
    );
  }
}
