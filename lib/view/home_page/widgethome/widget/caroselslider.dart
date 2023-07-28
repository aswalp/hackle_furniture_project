import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';

class CaroselSliderWidget extends StatelessWidget {
  const CaroselSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Padding(
        padding: EdgeInsets.all(
          Responsive.w(20, context),
        ),
        child: Stack(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: Responsive.h(200, context),
                child: Image.asset(
                  "assets/images/loginpage/loginpage.jpg",
                  fit: BoxFit.cover,
                )),
            Container(
              padding: const EdgeInsets.only(left: 5),
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              height: Responsive.h(60, context),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Text(
                "Combo Offer !!  $itemIndex",
                style: TextStyle(
                  fontSize: Responsive.w(20, context),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      options: CarouselOptions(
        height: Responsive.h(230, context),
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        enlargeCenterPage: true,
        enlargeFactor: 0.5,
      ),
    );
  }
}
