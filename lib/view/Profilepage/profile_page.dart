import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Responsive.h(60, context),
            ),
            Center(
              child: Text(
                "My Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: AppColors.primaryTheme,
                    fontSize: Responsive.w(24, context)),
              ),
            ),
            SizedBox(
              height: Responsive.h(20, context),
            ),
            Container(
              alignment: Alignment.bottomRight,
              height: Responsive.h(153, context),
              width: Responsive.w(152, context),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile/propic.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(180))),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.primaryTheme,
                child:
                    SvgPicture.asset("assets/icons/solar_camera-outline.svg"),
              ),
            ),
            Text(
              "   Machael Leanon",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: AppColors.primaryTheme,
                  fontSize: Responsive.w(18, context)),
            ),
            Text(
              "   michaellean42@gmail.com",
              style: TextStyle(
                  // fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: AppColors.primaryTheme,
                  fontSize: Responsive.w(14, context)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromARGB(11, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: Responsive.h(526, context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 30,
                    ),
                    child: Text(
                      "Account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          color: AppColors.primaryTheme,
                          fontSize: Responsive.w(14, context)),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            top: Responsive.h(10, context),
                            left: Responsive.w(25, context)),
                        height: Responsive.h(50, context),
                        width: Responsive.w(50, context),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(39, 0, 0, 0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset(
                          'assets/icons/Group 3.svg',
                          fit: BoxFit.contain,
                          height: 10,
                          width: 10,
                        ),
                      ),
                      SizedBox(
                        width: Responsive.w(20, context),
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: AppColors.primaryTheme,
                            fontSize: Responsive.w(18, context)),
                      ),
                      SizedBox(
                        width: Responsive.w(150, context),
                      ),
                      IconButton(
                          iconSize: 40,
                          color: AppColors.primaryTheme,
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next))
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h(10, context),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            top: Responsive.h(10, context),
                            left: Responsive.w(25, context)),
                        height: Responsive.h(50, context),
                        width: Responsive.w(50, context),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(79, 124, 252, 243),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset(
                          'assets/icons/carbon_notification.svg',
                          fit: BoxFit.contain,
                          height: 10,
                          width: 10,
                        ),
                      ),
                      SizedBox(
                        width: Responsive.w(20, context),
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: AppColors.primaryTheme,
                            fontSize: Responsive.w(18, context)),
                      ),
                      SizedBox(
                        width: Responsive.w(106, context),
                      ),
                      IconButton(
                          iconSize: 40,
                          color: AppColors.primaryTheme,
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next))
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h(10, context),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            top: Responsive.h(10, context),
                            left: Responsive.w(25, context)),
                        height: Responsive.h(50, context),
                        width: Responsive.w(50, context),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(124, 255, 179, 109),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset(
                          'assets/icons/tabler_clock.svg',
                          fit: BoxFit.contain,
                          height: 10,
                          width: 10,
                        ),
                      ),
                      SizedBox(
                        width: Responsive.w(20, context),
                      ),
                      Text(
                        "Order History",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: AppColors.primaryTheme,
                            fontSize: Responsive.w(18, context)),
                      ),
                      SizedBox(
                        width: Responsive.w(100, context),
                      ),
                      IconButton(
                          iconSize: 40,
                          color: AppColors.primaryTheme,
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 10,
                    ),
                    child: Text(
                      "General",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          color: AppColors.primaryTheme,
                          fontSize: Responsive.w(14, context)),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            top: Responsive.h(10, context),
                            left: Responsive.w(25, context)),
                        height: Responsive.h(50, context),
                        width: Responsive.w(50, context),
                        decoration: BoxDecoration(
                            color: Color(0x27000000),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset(
                          'assets/icons/ph_lock-bold.svg',
                          fit: BoxFit.contain,
                          height: 10,
                          width: 10,
                        ),
                      ),
                      SizedBox(
                        width: Responsive.w(20, context),
                      ),
                      Text(
                        "Privacy & Posily",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: AppColors.primaryTheme,
                            fontSize: Responsive.w(18, context)),
                      ),
                      SizedBox(
                        width: Responsive.w(72, context),
                      ),
                      IconButton(
                          iconSize: 40,
                          color: AppColors.primaryTheme,
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next))
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h(10, context),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            top: Responsive.h(10, context),
                            left: Responsive.w(25, context)),
                        height: Responsive.h(50, context),
                        width: Responsive.w(50, context),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(79, 124, 252, 243),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset(
                          'assets/icons/carbon_warning.svg',
                          fit: BoxFit.contain,
                          height: 10,
                          width: 10,
                        ),
                      ),
                      SizedBox(
                        width: Responsive.w(20, context),
                      ),
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: AppColors.primaryTheme,
                            fontSize: Responsive.w(18, context)),
                      ),
                      SizedBox(
                        width: Responsive.w(37, context),
                      ),
                      IconButton(
                          iconSize: 40,
                          color: AppColors.primaryTheme,
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next))
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h(10, context),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            top: Responsive.h(10, context),
                            left: Responsive.w(25, context)),
                        height: Responsive.h(50, context),
                        width: Responsive.w(50, context),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(124, 255, 179, 109),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset(
                          'assets/icons/tabler_logout-2.svg',
                          fit: BoxFit.contain,
                          height: 10,
                          width: 10,
                        ),
                      ),
                      SizedBox(
                        width: Responsive.w(20, context),
                      ),
                      Text(
                        "Log Out",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: AppColors.primaryTheme,
                            fontSize: Responsive.w(18, context)),
                      ),
                      SizedBox(
                        width: Responsive.w(152, context),
                      ),
                      IconButton(
                          iconSize: 40,
                          color: AppColors.primaryTheme,
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next))
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h(10, context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
