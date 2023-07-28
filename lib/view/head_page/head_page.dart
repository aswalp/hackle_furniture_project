import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/Profilepage/profile_page.dart';
import 'package:hackle_furniture_project/view/loginpage/login_page.dart';
import 'package:hackle_furniture_project/view/sign_up/signup_page.dart';

class HeadPage extends StatelessWidget {
  const HeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomRight: Radius.circular(40)),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: Responsive.h(500, context),
              child: Image.asset(
                'assets/images/Head_Page/headpage.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: Responsive.h(40, context),
                right: Responsive.w(90, context)),
            child: Text(
              'Enjoy Your online \nShopping',
              style: TextStyle(
                fontSize: Responsive.w(26, context),
                color: AppColors.primaryTheme,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Brows through all categories and shop the best \nfurniture for your dream house',
            style: TextStyle(
              fontSize: Responsive.w(13, context),
              color: AppColors.primaryTheme,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: Responsive.h(30, context),
          ),
          Container(
            margin: EdgeInsets.only(
              top: Responsive.h(20, context),
            ),
            height: Responsive.h(64, context),
            width: Responsive.w(333, context),
            decoration: BoxDecoration(
                color: AppColors.primaryTheme,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
