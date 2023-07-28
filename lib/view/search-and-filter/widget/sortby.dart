import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/provider/filterandsortprovider/filterandsortprovider.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';

class SortBy extends ConsumerWidget {
  const SortBy({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int sortby = ref.watch(sortbyprovider);
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
                icon: const Icon(Icons.close)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Relavance",
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
                groupValue: sortby,
                onChanged: (value) {
                  ref.read(sortbyprovider.notifier).state = value!;
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price Low to High ",
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
                groupValue: sortby,
                onChanged: (value) {
                  ref.read(sortbyprovider.notifier).state = value!;
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price High to Low",
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
                groupValue: sortby,
                onChanged: (value) {
                  ref.read(sortbyprovider.notifier).state = value!;
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popularity",
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
                groupValue: sortby,
                onChanged: (value) {
                  ref.read(sortbyprovider.notifier).state = value!;
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
