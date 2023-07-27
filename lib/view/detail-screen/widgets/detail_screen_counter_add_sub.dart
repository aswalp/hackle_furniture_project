import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../provider/detail_page_image_value_provider/detail_image_counterapp.dart';
import '../../../utils/responsive_util.dart';

class BuildCounterAddAndSub extends ConsumerWidget {
  const BuildCounterAddAndSub({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 182, 190, 190)),
      width: Responsive.w(69, context),
      height: Responsive.h(26, context),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                if (ref.watch(itemCountProvider) > 1) {
                  ref.watch(itemCountProvider.notifier).state--;
                }
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 10,
                child: SvgPicture.asset("assets/icons/ph_minus-light.svg"),
              ),
            ),
            Text(ref.watch(itemCountProvider).toString()),
            InkWell(
              onTap: () {
                ref.watch(itemCountProvider.notifier).state++;
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 10,
                child: SvgPicture.asset("assets/icons/ph_plus.svg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
