import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';

import '../../utils/responsive_util.dart';
import '../widget/payment_status.dart';

class AddressChange extends StatelessWidget {
  const AddressChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            floating: true,
            leading: Padding(
              padding: EdgeInsets.all(Responsive.w(8, context)),
              child: CircleAvatar(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new)),
              ),
            ),
            title: const Text(
              "Select Address",
            ),
          ),
          SliverToBoxAdapter(
            child: selectaddress(context),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: AppColors.primaryTheme),
        height: Responsive.h(60, context),
        child: Center(
          child: Text(
            "Deliver here",
            style: TextStyle(
                color: Colors.white,
                fontSize: Responsive.w(20, context),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  selectaddress(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(Responsive.w(5, context)),
          height: Responsive.h(120, context),
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(Responsive.w(10, context))),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 1,
                  color: Color(0x1F000000),
                )
              ]),
          child: const PaymentStatus(activeStep: 0),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(Responsive.w(10, context))),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 1,
                  color: Color(0x1F000000),
                )
              ]),
          margin: EdgeInsets.all(Responsive.w(5, context)),
          height: Responsive.h(70, context),
          child: Row(
            children: [
              Icon(
                Icons.add,
                color: AppColors.textColor,
                size: Responsive.w(30, context),
              ),
              Text(
                "Add a new address",
                style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: Responsive.w(20, context),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(Responsive.w(10, context)),
          margin: EdgeInsets.all(Responsive.w(10, context)),
          height: Responsive.h(150, context),
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(Responsive.w(10, context))),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 1,
                  color: Color(0x1F000000),
                )
              ]),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              )
            ],
          ),
        )
      ],
    );
  }
}
