import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:hackle_furniture_project/view/detail-screen/widgets/detail_screen_scrollview.dart';
import 'package:hackle_furniture_project/view/wishlist_screen/widget/wishlist_screen_container_list.dart';
import 'package:hackle_furniture_project/view/wishlist_screen/widget/wishlist_screen_top_menu.dart';
import '../../utils/app_colors.dart';
import '../../utils/responsive_util.dart';
// ignore: unused_import
import '../detail-screen/widgets/detail_screen_logo.dart';

class WishListScreenHuckle extends StatelessWidget {
  const WishListScreenHuckle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackGroundColor,
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.w(9, context),
                  vertical: Responsive.h(30, context)),
              child: const BuildWishListTopMenu(),
            ),
            ListView.separated(
                padding:
                    EdgeInsets.symmetric(horizontal: Responsive.w(10, context)),
                controller: ScrollController(),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(Responsive.w(6, context)),
                    width: Responsive.w(205, context),
                    height: Responsive.h(125, context),
                    margin: EdgeInsets.symmetric(
                        vertical: Responsive.h(10, context)),
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
                    child: BuildListContainer(
                        images: Image.asset(
                          'assets/images/Furniture - 1/Side 1/1.png',
                        ),
                        text1: "Modern Chair",
                        text2: "ArmChair",
                        text3: "\$185"),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: Responsive.w(10, context),
                  );
                },
                itemCount: 5)
          ]),
        ));
  }
}
