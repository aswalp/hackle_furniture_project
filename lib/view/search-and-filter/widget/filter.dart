import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/provider/filterandsortprovider/filterandsortprovider.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';

class Filter extends ConsumerWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int optionfilter = ref.watch(filterprovider);
    return Padding(
      padding: EdgeInsets.all(Responsive.w(10, context)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
          ),
          InkWell(
            onTap: () {
              ref.read(filterprovider.notifier).state = 1;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price 5000 or Less",
                  style: TextStyle(
                    fontSize: Responsive.w(14, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTheme,
                  ),
                ),
                Radio(
                  activeColor: AppColors.primaryTheme,
                  value: 1,
                  groupValue: optionfilter,
                  onChanged: (value) {
                    ref.read(filterprovider.notifier).state = value!;
                  },
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              ref.read(filterprovider.notifier).state = 2;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price 5000 or 10000",
                  style: TextStyle(
                    fontSize: Responsive.w(14, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTheme,
                  ),
                ),
                Radio(
                  activeColor: AppColors.primaryTheme,
                  value: 2,
                  groupValue: optionfilter,
                  onChanged: (value) {
                    ref.read(filterprovider.notifier).state = value!;
                  },
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              ref.read(filterprovider.notifier).state = 3;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price 10000 or 20000",
                  style: TextStyle(
                    fontSize: Responsive.w(14, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTheme,
                  ),
                ),
                Radio(
                  activeColor: AppColors.primaryTheme,
                  value: 3,
                  groupValue: optionfilter,
                  onChanged: (value) {
                    ref.read(filterprovider.notifier).state = value!;
                  },
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              ref.read(filterprovider.notifier).state = 4;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price 20000 or more",
                  style: TextStyle(
                    fontSize: Responsive.w(14, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTheme,
                  ),
                ),
                Radio(
                  activeColor: AppColors.primaryTheme,
                  value: 4,
                  groupValue: optionfilter,
                  onChanged: (value) {
                    ref.read(filterprovider.notifier).state = value!;
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
