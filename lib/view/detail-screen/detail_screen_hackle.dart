// ignore_for_file: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackle_furniture_project/provider/detail_page_image_value_provider/detail_image_counterapp.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/detail-screen/widgets/detail_screen_zoom_page.dart';
import '../../provider/detail_page_image_value_provider/detail_image_color.dart';
import '../../provider/detail_page_image_value_provider/detail_value.dart';
import 'widgets/detail_screen_chair_change.dart';
import 'widgets/detail_screen_color_changer.dart';
import 'widgets/detail_screen_color_main.dart';
import 'widgets/detail_screen_counter_add_sub.dart';
import 'widgets/detail_screen_logo.dart';
import 'widgets/detail_screen_menu_container.dart';
import 'widgets/detail_screen_navigation_bar.dart';
import 'widgets/detail_screen_scrollview.dart';
import 'widgets/detail_screen_side_changer.dart';
import 'widgets/detail_screen_similar_view.dart';

class DetailScreen extends ConsumerStatefulWidget {
  const DetailScreen({super.key});

  @override
  ConsumerState<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen> {
  late CarouselController carouselController;
  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.w(9, context),
                  right: Responsive.w(9, context),
                  top: Responsive.h(30, context)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildLogoIcon(icons: Icon(Icons.arrow_back_ios_new_rounded)),
                  BuildLogoIcon(icons: Icon(Icons.favorite_border))
                ],
              ),
            ),
            SizedBox(
              height: Responsive.h(358, context),
              child: BuildChairChanges(
                carouselController: carouselController,
              ),
            ),
            SizedBox(
              height: Responsive.h(10, context),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Responsive.w(26, context)),
              child: BuildSideChanger(carouselController: carouselController),
            ),
            SizedBox(
              height: Responsive.h(20, context),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: Responsive.h(570, context),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Responsive.w(26, context),
                    vertical: Responsive.h(8, context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$185",
                      style: TextStyle(
                          color: const Color(0xff374B4D),
                          fontSize: Responsive.w(30, context),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Modern Chair",
                          style: TextStyle(
                              color: const Color(0xff374B4D),
                              fontSize: Responsive.w(28, context),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF4EAD3),
                          ),
                          width: Responsive.w(58, context),
                          height: Responsive.h(22, context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/Vector (2).svg"),
                              SizedBox(
                                width: Responsive.w(8, context),
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                    color: const Color(0xffE4B02B),
                                    fontFamily: "Poppins",
                                    fontSize: Responsive.w(12, context),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Armchair',
                      style: TextStyle(
                          color: const Color(0xff929797),
                          fontFamily: "Poppins",
                          fontSize: Responsive.w(18, context),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: Responsive.h(13, context),
                    ),
                    RichText(
                      text: TextSpan(
                        text:
                            'The simple and elegant shape makes it verysuitable for those of you who like those of youwho want a minimalist room',
                        style: TextStyle(
                            color: const Color(0xff929797),
                            fontFamily: "Poppins",
                            fontSize: Responsive.w(14, context),
                            fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Read More .',
                            style: TextStyle(
                                color: const Color(0xff374B4D),
                                fontFamily: "Poppins",
                                fontSize: Responsive.w(15, context),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Responsive.h(20, context),
                    ),
                    const BuildColorChange(),
                    SizedBox(
                      height: Responsive.h(15, context),
                    ),
                    const Text('Coupon On Up'),
                    Text(
                      'You Might Like',
                      style: TextStyle(
                          fontSize: Responsive.w(26, context),
                          color: AppColors.primaryTheme,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    ),
                    SizedBox(
                      height: Responsive.h(15, context),
                    ),
                    SizedBox(
                      height: Responsive.h(200, context),
                      child: const BuildSimilarScroll(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BuildBottomNavigationBar(),
    );
  }
}
