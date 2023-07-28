import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackle_furniture_project/provider/hometextfeildprovider/hometextfeildprovider.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/search-and-filter/searchandfilter.dart';

class HomeTextFeild extends ConsumerWidget {
  const HomeTextFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController textEditingController = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Responsive.w(25, context),
      ),
      child: SizedBox(
        height: Responsive.h(45, context),
        // width: 42,
        child: TextField(
          controller: textEditingController,
          onSubmitted: (value) {
            if (value != "") {
              ref.read(hometextfeildprovider.notifier).state = value;
              print(ref.watch(hometextfeildprovider));
              textEditingController.clear();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchAndFilter(),
                  ));
            }
          },
          style: TextStyle(
              fontSize: Responsive.w(14, context),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: AppColors.primaryTheme),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: "search of furniture",
              hintStyle: TextStyle(
                  fontSize: Responsive.w(14, context),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor),
              prefixIcon: Padding(
                padding: EdgeInsets.all(Responsive.w(6, context)),
                child: SvgPicture.asset("assets/icons/circum_search.svg",
                    colorFilter: const ColorFilter.mode(
                        AppColors.textColor, BlendMode.srcIn),
                    semanticsLabel: 'Search Logo'),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(Responsive.w(6, context)),
                child: SvgPicture.asset("assets/icons/mdi_tune-variant.svg",
                    colorFilter: const ColorFilter.mode(
                        AppColors.textColor, BlendMode.srcIn),
                    semanticsLabel: 'Search Logo'),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.white),
        ),
      ),
    );
  }
}
