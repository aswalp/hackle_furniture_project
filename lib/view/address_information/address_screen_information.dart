// ignore_for_file: unused_import, duplicate_ignore

import 'package:csc_picker/csc_picker.dart';
// ignore: unused_import
import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/provider/state_change_provider/state_change.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/view/address_information/widget/address_screen_add_button.dart';
import 'package:hackle_furniture_project/view/address_information/widget/address_screen_state_changer.dart';
import 'package:hackle_furniture_project/view/address_information/widget/address_screen_text_field.dart';
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        left: Responsive.w(20, context),
                        right: Responsive.w(20, context),
                        top: Responsive.h(0, context)),
                    child: const BuildLogoIcon(
                      icons: Icon(Icons.arrow_back_ios_new_rounded),
                      val: 1,
                    )),
                SizedBox(
                  width: Responsive.w(75, context),
                  height: Responsive.h(140, context),
                ),
                Image.asset(
                  'assets/companylogos/Logo.png',
                  fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ],
            ),
            SizedBox(
              height: Responsive.h(0, context),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 5),
                          spreadRadius: 5,
                          color: Color(0x40000000))
                    ]),
                width: 360,
                // height: 700,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: BuildTextField(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
