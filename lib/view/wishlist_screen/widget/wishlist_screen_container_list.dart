import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/responsive_util.dart';

class BuildListContainer extends ConsumerWidget {
  const BuildListContainer({
    super.key,
    required this.images,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  final Image images;
  final String text1;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: double.maxFinite,
          width: Responsive.w(150, context),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.imageBgColor),
          child: SizedBox(
              height: Responsive.h(75, context),
              width: Responsive.w(75, context),
              child: images),
        ),
        SizedBox(
          width: Responsive.w(15, context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: Responsive.w(16, context),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: AppColors.primaryTheme,
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: Responsive.w(16, context),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w300,
                color: AppColors.textColor,
              ),
            ),
            Text(
              text3,
              style: TextStyle(
                fontSize: Responsive.w(24, context),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: AppColors.primaryTheme,
              ),
            )
          ],
        ),
        const Spacer(),
        Align(
          alignment: Alignment.center,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/ic_baseline-favorite-border.svg",
              height: 24,
              width: 24,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
