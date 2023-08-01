import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/detail-screen/detail_screen_hackle.dart';

class NewCategories extends StatelessWidget {
  const NewCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.h(290, context),
      child: ListView.separated(
          padding: EdgeInsets.only(right: Responsive.w(20, context)),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailScreen(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.all(Responsive.w(12, context)),
                margin: EdgeInsets.symmetric(
                  vertical: Responsive.h(10, context),
                ),
                height: Responsive.h(30, context),
                width: Responsive.w(205, context),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Responsive.w(8, context)),
                      width: double.maxFinite,
                      height: Responsive.h(175, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.imageBgColor),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Responsive.h(130, context),
                            width: Responsive.w(130, context),
                            child: Image.asset(
                              "assets/images/Furniture - 1/Side 1/1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: Responsive.h(3, context),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Responsive.h(25, context),
                                padding: EdgeInsets.symmetric(
                                    horizontal: Responsive.w(10, context)),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF04545),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                    fontSize: Responsive.w(14, context),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.h(25, context),
                                padding: EdgeInsets.symmetric(
                                    horizontal: Responsive.w(10, context)),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF4EAD3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/icons/Vector (2).svg"),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        fontSize: Responsive.w(14, context),
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffE4B02B),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
                    Row(
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
                    )
                  ],
                ),
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
