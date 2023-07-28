import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';

import '../../../utils/app_colors.dart';

class FilterAndSortGrid extends StatelessWidget {
  const FilterAndSortGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Responsive.w(15, context)),
      child: GridView.builder(
        itemCount: 16,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 4.5 / 5,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(Responsive.w(6, context)),
            height: Responsive.h(215, context),
            width: Responsive.w(180, context),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 3,
                    spreadRadius: 1,
                    color: Color(0x1F000000),
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // padding: EdgeInsets.all(Responsive.w(10, context)),
                  height: Responsive.h(120, context),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.imageBgColor),
                  child: SizedBox(
                    height: Responsive.h(75, context),
                    width: Responsive.w(75, context),
                    child: Image.asset(
                      "assets/images/Furniture - 2/Side 1/1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  "Modern Sofa ",
                  style: TextStyle(
                    fontSize: Responsive.w(16, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTheme,
                  ),
                ),
                Text(
                  "\$295",
                  style: TextStyle(
                    fontSize: Responsive.w(16, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTheme,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
