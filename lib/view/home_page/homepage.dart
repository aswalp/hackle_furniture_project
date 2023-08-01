import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackle_furniture_project/provider/bottamnavigationbarprovider/navigationprovider.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/Profilepage/profile_page.dart';
import 'package:hackle_furniture_project/view/cart_huckle/cart_huckle.dart';
import 'package:hackle_furniture_project/view/home_page/widgethome/home.dart';
import 'package:hackle_furniture_project/view/wishlist_screen/wishlist_screen_huckle.dart';

class MainHomePageUi extends ConsumerWidget {
  const MainHomePageUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PageController pageController = PageController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackGroundColor,
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            Homepage(),
            WishListScreenHuckle(),
            MyCart(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: ref.watch(bottonnavprovider),
            onTap: (value) {
              ref.read(bottonnavprovider.notifier).state = value;
              pageController.animateToPage(value,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear);
            },
            type: BottomNavigationBarType.fixed,
            fixedColor: AppColors.primaryTheme,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(
              fontSize: Responsive.w(14, context),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              color: AppColors.primaryTheme,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: Responsive.w(12, context),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: AppColors.primaryTheme,
            ),
            items: [
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset("assets/icons/Vector.svg"),
                  icon: SvgPicture.asset(
                      "assets/icons/majesticons_home-line.svg"),
                  label: "Home"),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset("assets/icons/Vector (3).svg"),
                  icon: SvgPicture.asset(
                      "assets/icons/ic_outline-favorite-border.svg"),
                  label: "Favourite "),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset("assets/icons/Vector (4).svg"),
                  icon: SvgPicture.asset("assets/icons/Vector (1).svg"),
                  label: "Cart "),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                      "assets/icons/iconamoon_profile-fill.svg"),
                  icon: SvgPicture.asset("assets/icons/iconamoon_profile.svg"),
                  label: "Profile "),
            ]),
      ),
    );
  }
}
