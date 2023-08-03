import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/loginpage/login_page.dart';
import 'package:hackle_furniture_project/view/loginpage/widget/customtextfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              height: Responsive.h(500, context),
              width: Responsive.w(330, context),
              child: Column(
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: Responsive.w(20, context),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTheme,
                    ),
                  ),
                  const CustomTextField(hint: "Full Name"),
                  SizedBox(
                    height: Responsive.h(15, context),
                  ),
                  const CustomTextField(hint: "Email"),
                  SizedBox(
                    height: Responsive.h(15, context),
                  ),
                  const CustomTextField(hint: "Username"),
                  SizedBox(
                    height: Responsive.h(15, context),
                  ),
                  const CustomTextField(hint: "Password"),
                  SizedBox(
                    height: Responsive.h(15, context),
                  ),
                  const CustomTextField(hint: "Confirm Password"),
                  SizedBox(
                    height: Responsive.h(15, context),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'I agree to the',
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
                      top: Responsive.h(20, context),
                    ),
                    height: Responsive.h(46, context),
                    width: Responsive.w(263, context),
                    decoration: BoxDecoration(
                        color: AppColors.primaryTheme,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Loginpage(),
                            ),
                          );
                        },
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            fontSize: Responsive.w(20, context),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
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
