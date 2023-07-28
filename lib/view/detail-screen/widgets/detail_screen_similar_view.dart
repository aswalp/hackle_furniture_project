import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/responsive_util.dart';

class BuildSimilarScroll extends ConsumerWidget {
  const BuildSimilarScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: Responsive.w(2, context)),
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.all(Responsive.w(3, context)),
              width: Responsive.w(150, context),
              margin: EdgeInsets.symmetric(vertical: Responsive.h(2, context)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 3,
                      spreadRadius: 1,
                      color: Color(0x1F000000),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 130,
                      width: Responsive.w(130, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.imageBgColor),
                      child: SizedBox(
                        height: Responsive.h(100, context),
                        width: Responsive.w(100, context),
                        child: Image.asset(
                          "assets/images/Furniture - 2/Side 1/1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Responsive.w(12, context)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Modern chair ",
                          style: TextStyle(
                            fontSize: Responsive.w(13, context),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryTheme,
                          ),
                        ),
                        Text(
                          "Armchair ",
                          style: TextStyle(
                            fontSize: Responsive.w(11, context),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            color: AppColors.textColor,
                          ),
                        ),
                        SizedBox(
                          width: Responsive.w(140, context),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$185",
                                style: TextStyle(
                                  fontSize: Responsive.w(16, context),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryTheme,
                                ),
                              ),
                              SvgPicture.asset(
                                "assets/icons/ic_baseline-favorite-border.svg",
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ));
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: Responsive.w(10, context),
          );
        },
        itemCount: 5);
  }
}
