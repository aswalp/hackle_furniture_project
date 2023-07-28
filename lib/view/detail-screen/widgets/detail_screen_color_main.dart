import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/detail_page_image_value_provider/detail_image_color.dart';
import '../../../utils/responsive_util.dart';
import 'detail_screen_color_changer.dart';
import 'detail_screen_counter_add_sub.dart';

class BuildColorChange extends ConsumerWidget {
  const BuildColorChange({
    super.key,
   
  });

  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Row(
      children: [
        Text(
          'Color',
          style: TextStyle(
              color: const Color(0xff374B4D),
              fontFamily: "Poppins",
              fontSize: Responsive.w(12, context),
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: Responsive.h(10, context),
        ),
        InkWell(
          onTap: () {
            ref.read(detailColorProvider.notifier).state = 0;
          },
          child: BuildColorChanger(
            changecolor: const Color(0xff355F46),
            isSelected: ref.watch(detailColorProvider) == 0,
          ),
        ),
        SizedBox(
          width: Responsive.h(5, context),
        ),
        InkWell(
          onTap: () {
            ref.read(detailColorProvider.notifier).state = 1;
          },
          child: BuildColorChanger(
            changecolor: const Color(0xff4F92B8),
            isSelected: ref.watch(detailColorProvider) == 1,
          ),
        ),
        SizedBox(
          width: Responsive.h(5, context),
        ),
        InkWell(
          onTap: () {
            ref.read(detailColorProvider.notifier).state = 2;
          },
          child: BuildColorChanger(
            changecolor: const Color(0xffB13250),
            isSelected: ref.watch(detailColorProvider) == 2,
          ),
        ),
        const Spacer(),
        const BuildCounterAddAndSub(),
      ],
    );
  }
}
