import 'package:csc_picker/csc_picker.dart';
// ignore: unused_import
import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/provider/state_change_provider/state_change.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/view/address_information/widget/address_screen_add_button.dart';
import 'package:hackle_furniture_project/view/loginpage/widget/customtextfield.dart';

import '../../utils/responsive_util.dart';
import '../detail-screen/widgets/detail_screen_logo.dart';

class AddressInformationScreen extends StatefulWidget {
  const AddressInformationScreen({super.key});

  @override
  State<AddressInformationScreen> createState() =>
      _AddressInformationScreenState();
}

class _AddressInformationScreenState extends State<AddressInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    left: Responsive.w(20, context),
                    right: Responsive.w(20, context),
                    top: Responsive.h(30, context)),
                child: const BuildLogoIcon(
                    icons: Icon(Icons.arrow_back_ios_new_rounded))),
            SizedBox(
              height: Responsive.h(30, context),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 10),
                          spreadRadius: 5,
                          color: Color(0x40000000))
                    ]),
                width: 360,
                // height: 700,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
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
                      const CustomTextField(
                          hint: "Flat,House no,Building,Company"),
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
                      SizedBox(
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
                      ),
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
