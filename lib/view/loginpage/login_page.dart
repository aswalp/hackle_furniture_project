import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/head_page/head_page.dart';
import 'package:hackle_furniture_project/view/loginpage/widget/customtextfield.dart';
import 'package:hackle_furniture_project/view/sign_up/signup_page.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    // String hint="Email";
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(40)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: Responsive.h(300, context),
                child: Image.asset(
                  'assets/images/loginpage/loginpage.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Responsive.h(30, context)),
              padding: EdgeInsets.all(Responsive.w(20, context)),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    spreadRadius: 5,
                  ),
                ],
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              height: Responsive.h(480, context),
              width: Responsive.w(330, context),
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: Responsive.w(20, context),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      color: AppColors.primaryTheme,
                    ),
                  ),
                  const CustomTextField(hint: "Email"),
                  SizedBox(
                    height: Responsive.h(15, context),
                  ),
                  const CustomTextField(hint: "Password"),
                  SizedBox(
                    height: Responsive.h(15, context),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: Responsive.w(14, context),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 42, 60, 61),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: Responsive.h(30, context),
                    ),
                    height: Responsive.h(46, context),
                    width: Responsive.w(263, context),
                    decoration: const BoxDecoration(
                        color: AppColors.primaryTheme,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HeadPage(),
                            ),
                          );
                        },
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            fontSize: Responsive.w(20, context),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Responsive.h(30, context),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ));
                    },
                    child: Text(
                      "Don't have an account? Sign In",
                      style: TextStyle(
                        fontSize: Responsive.w(14, context),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 42, 60, 61),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Responsive.h(40, context),
                  ),
                  Text(
                    "By clicking submit you are accepting our",
                    style: TextStyle(
                      fontSize: Responsive.w(13, context),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 42, 60, 61),
                    ),
                  ),
                  SizedBox(
                    height: Responsive.h(20, context),
                  ),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      fontSize: Responsive.w(14, context),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 42, 60, 61),
                    ),
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
