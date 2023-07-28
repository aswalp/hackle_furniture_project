import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/responsive_util.dart';
import '../../loginpage/widget/customtextfield.dart';
import 'address_screen_add_button.dart';
import 'address_screen_state_changer.dart';

class BuildTextField extends ConsumerWidget {
  const BuildTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Responsive.h(20, context),
        ),
        const CustomTextField(hint: "Full Name"),
        SizedBox(
          height: Responsive.h(20, context),
        ),
        const CustomTextField(hint: "Mobile Number"),
        SizedBox(
          height: Responsive.h(25, context),
        ),
        const Text(
          'May be used to assist delivery',
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 12,
              color: AppColors.primaryTheme),
        ),
        SizedBox(
          height: Responsive.h(10, context),
        ),
        const CustomTextField(hint: "Flat,House no,Building,Company"),
        SizedBox(
          height: Responsive.h(20, context),
        ),
        const CustomTextField(hint: "Area,Street,Sector,Village"),
        SizedBox(
          height: Responsive.h(20, context),
        ),
        const CustomTextField(hint: "LandMark"),
        SizedBox(
          height: Responsive.h(20, context),
        ),
        const CustomTextField(hint: "PinCode"),
        SizedBox(
          height: Responsive.h(20, context),
        ),
        const CustomTextField(hint: "Town/City"),
        SizedBox(
          height: Responsive.h(20, context),
        ),
        const BuildStateChanger(),
        SizedBox(
          height: Responsive.h(10, context),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: Responsive.w(20, context),
              right: Responsive.w(20, context)),
          child: const BuildAddressButton(),
        )
      ],
    );
  }
}
