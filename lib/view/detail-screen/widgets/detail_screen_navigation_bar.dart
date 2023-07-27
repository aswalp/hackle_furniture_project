import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/responsive_util.dart';

class BuildBottomNavigationBar extends ConsumerWidget {
  const BuildBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomAppBar(
      color: const Color.fromARGB(0, 255, 255, 255),
      surfaceTintColor: AppColors.scaffoldBackGroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.primaryTheme),
            width: Responsive.w(168, context),
            height: Responsive.h(56, context),
            child: Center(
                child: Text(
              'Add to Cart',
              style: TextStyle(
                  fontSize: Responsive.w(20, context),
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins"),
            )),
          ),
          SizedBox(
            width: Responsive.w(5, context),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.primaryTheme),
            width: Responsive.w(168, context),
            height: Responsive.h(56, context),
            child: Center(
                child: Text(
              'Buy Now',
              style: TextStyle(
                  fontSize: Responsive.w(20, context),
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins"),
            )),
          )
        ],
      ),
    );
  }
}
