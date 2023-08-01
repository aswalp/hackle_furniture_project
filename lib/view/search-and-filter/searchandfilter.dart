import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackle_furniture_project/provider/hometextfeildprovider/hometextfeildprovider.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/search-and-filter/widget/filter.dart';
import 'package:hackle_furniture_project/view/search-and-filter/widget/searchandgrid.dart';
import 'package:hackle_furniture_project/view/search-and-filter/widget/sortby.dart';

class SearchAndFilter extends ConsumerWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.scaffoldBackGroundColor,
            leading: Padding(
              padding: EdgeInsets.all(Responsive.w(8, context)),
              child: InkWell(
                borderRadius: BorderRadius.circular(60),
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff405D60),
                  ),
                ),
              ),
            ),
            title: Text(
              'Result for "${ref.watch(hometextfeildprovider)}"',
              style: TextStyle(
                  fontSize: Responsive.w(22, context),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryTheme),
            ),
          ),
          SliverAppBar(
            surfaceTintColor: AppColors.scaffoldBackGroundColor,
            backgroundColor: AppColors.scaffoldBackGroundColor,
            primary: false,
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            pinned: true,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    sortbysheet(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: Responsive.h(10, context)),
                    height: Responsive.h(50, context),
                    width: Responsive.w(140, context),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Color(0x1F000000),
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            "assets/icons/clarity_sort-by-line.svg",
                            colorFilter: const ColorFilter.mode(
                                AppColors.primaryTheme, BlendMode.srcIn)),
                        Text(
                          "Sort By",
                          style: TextStyle(
                              fontSize: Responsive.w(16, context),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryTheme),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Responsive.h(90, context)),
                InkWell(
                  onTap: () {
                    filtersheet(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: Responsive.h(10, context)),
                    height: Responsive.h(50, context),
                    width: Responsive.w(140, context),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 3,
                            spreadRadius: 1,
                            color: Color(0x1F000000),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/mdi_tune-variant.svg",
                            colorFilter: const ColorFilter.mode(
                                AppColors.primaryTheme, BlendMode.srcIn)),
                        Text(
                          "Filter",
                          style: TextStyle(
                              fontSize: Responsive.w(16, context),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryTheme),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: FilterAndSortGrid(),
          )
        ],
      ),
    );
  }

  Future<dynamic> sortbysheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => const SortBy(),
    );
  }

  Future<dynamic> filtersheet(BuildContext context) {
    return showModalBottomSheet(
      useSafeArea: true,
      backgroundColor: Colors.white,
      enableDrag: false,
      context: context,
      builder: (context) => const Filter(),
    );
  }
}
