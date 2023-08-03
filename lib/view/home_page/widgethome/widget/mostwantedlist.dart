import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';

class MostWantedItems extends StatelessWidget {
  const MostWantedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.h(125, context),
      child: ListView.separated(
          padding: EdgeInsets.only(right: Responsive.w(20, context)),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(Responsive.w(6, context)),
              width: Responsive.w(290, context),
              margin: EdgeInsets.symmetric(vertical: Responsive.h(10, context)),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // padding: EdgeInsets.all(Responsive.w(10, context)),
                    height: double.infinity,
                    width: Responsive.w(110, context),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Modern chair ",
                        style: TextStyle(
                          fontSize: Responsive.w(16, context),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryTheme,
                        ),
                      ),
                      Text(
                        "Armchair ",
                        style: TextStyle(
                          fontSize: Responsive.w(12, context),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(
                        width: Responsive.w(130, context),
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
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: Responsive.w(10, context),
            );
          },
          itemCount: 5),
    );
  }
}
