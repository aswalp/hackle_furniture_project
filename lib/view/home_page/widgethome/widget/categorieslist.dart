import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';

import '../../../../provider/homepage_categories/categoriesprovider.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var categories = ref.watch(categorieprovider);
    return DefaultTabController(
      length: categories.length,
      child: TabBar(
        isScrollable: true,
        labelColor: Colors.white,
        unselectedLabelColor: AppColors.primaryTheme,
        labelStyle: TextStyle(
          fontSize: Responsive.w(14, context),
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: AppColors.primaryTheme,
          borderRadius: BorderRadius.circular(50),
        ),
        splashBorderRadius: BorderRadius.circular(50),
        tabs: [
          for (int index = 0; index < categories.length; index++)
            Tab(
              text: categories[index],
            ),
        ],
      ),
    );
  }
}
