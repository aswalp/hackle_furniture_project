import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/view/home_page/widgethome/widget/bestsellerlist.dart';
import 'package:hackle_furniture_project/view/home_page/widgethome/widget/caroselslider.dart';
import 'package:hackle_furniture_project/view/home_page/widgethome/widget/categorieslist.dart';
import 'package:hackle_furniture_project/view/home_page/widgethome/widget/hometextfeild.dart';
import 'package:hackle_furniture_project/view/home_page/widgethome/widget/mostwantedlist.dart';
import 'package:hackle_furniture_project/view/home_page/widgethome/widget/newcatedorilist.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/responsive_util.dart';

class Homepage extends ConsumerWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Text(
                "Discover the Best \nFurniture ",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: Responsive.w(24, context),
                  color: AppColors.primaryTheme,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: Responsive.w(30, context),
                backgroundImage:
                    const AssetImage("assets/images/profile/propic.jpg"),
              ),
              SizedBox(
                width: Responsive.w(20, context),
              )
            ],
          ),
        ),
        const SliverAppBar(
          surfaceTintColor: AppColors.scaffoldBackGroundColor,
          floating: true,
          backgroundColor: AppColors.scaffoldBackGroundColor,
          title: HomeTextFeild(),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CaroselSliderWidget(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Responsive.w(20, context)),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: Responsive.w(20, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryTheme,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SliverAppBar(
          surfaceTintColor: AppColors.scaffoldBackGroundColor,
          toolbarHeight: 100,
          centerTitle: true,
          pinned: true,
          primary: false,
          backgroundColor: AppColors.scaffoldBackGroundColor,
          title: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CategoriesList(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: Responsive.w(25, context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Responsive.h(20, context),
                ),
                const NewCategories(),
                SizedBox(
                  height: Responsive.h(20, context),
                ),
                Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: Responsive.w(20, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryTheme,
                  ),
                ),
                SizedBox(
                  height: Responsive.h(15, context),
                ),
                const BestSellerList(),
                SizedBox(
                  height: Responsive.h(20, context),
                ),
                Text(
                  "Most Wanted",
                  style: TextStyle(
                    fontSize: Responsive.w(20, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryTheme,
                  ),
                ),
                SizedBox(
                  height: Responsive.h(15, context),
                ),
                const MostWantedItems()
              ],
            ),
          ),
        )
      ],
    );
  }
}
