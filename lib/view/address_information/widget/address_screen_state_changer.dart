import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/state_change_provider/state_change.dart';
import '../../../utils/app_colors.dart';

class BuildStateChanger extends ConsumerWidget {
  const BuildStateChanger({
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return SizedBox(
      width: 300,
      child: Consumer(builder: (_, ref, __) {
        return CSCPicker(
          layout: Layout.horizontal,
          dropdownDecoration: const BoxDecoration(
            border: Border(
              bottom:
                  BorderSide(color: AppColors.primaryTheme),
            ),
          ),
          selectedItemStyle: const TextStyle(
              fontFamily: "Poppins",
              color: AppColors.primaryTheme),
          dropdownHeadingStyle: const TextStyle(
              fontFamily: "Poppins",
              color: AppColors.primaryTheme),
          dropdownItemStyle: const TextStyle(
              fontFamily: "Poppins",
              color: AppColors.primaryTheme),
          defaultCountry: CscCountry.India,
          // countryFilter: [CscCountry.India],
          currentState: ref.watch(stateGeoProvider),
          disableCountry: true,
          showCities: false,
          // currentCountry: ,
          onCountryChanged: (country) {},
          onStateChanged: (state) {
            ref.read(stateGeoProvider.notifier).state =
                state ?? "";
          },
          onCityChanged: (city) {},
        );
      }),
    );
  }
}
