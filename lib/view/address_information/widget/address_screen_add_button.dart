import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/responsive_util.dart';

class BuildAddressButton extends StatelessWidget {
  const BuildAddressButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.primaryTheme),
      width: Responsive.w(268, context),
      height: Responsive.h(56, context),
      child: Center(
          child: Text(
        'Add Address',
        style: TextStyle(
            fontSize: Responsive.w(20, context),
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins"),
      )),
    );
  }
}
