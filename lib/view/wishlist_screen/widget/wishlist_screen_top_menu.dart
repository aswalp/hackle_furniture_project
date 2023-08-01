import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/responsive_util.dart';
import '../../detail-screen/widgets/detail_screen_logo.dart';

class BuildWishListTopMenu extends ConsumerWidget {
  const BuildWishListTopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BuildLogoIcon(
          icons: Icon(Icons.arrow_back_ios_new_rounded),
          val: 1,
        ),
        Text(
          "WishList",
          style: TextStyle(
              color: const Color(0xff374B4D),
              fontSize: Responsive.w(28, context),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffBAD7DA)),
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffD9D9D9)),
          width: Responsive.w(45, context),
          height: Responsive.h(45, context),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: SvgPicture.asset(
              "assets/icons/fluent_delete-28-filled.svg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
