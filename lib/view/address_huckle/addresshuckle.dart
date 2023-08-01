import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/view/address_details/address_details.dart';
import 'package:hackle_furniture_project/view/payment_methords/payment.dart';

import '../../utils/responsive_util.dart';
import '../widget/payment_status.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key});

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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
              ),
            ),
            title: const Text(
              "Order Summary",
            ),
          ),
          SliverToBoxAdapter(
            child: address(context),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Responsive.h(200, context),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Responsive.w(40, context)),
                topRight: Radius.circular(Responsive.w(40, context))),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, -1), blurRadius: 20)
            ]),
        child: Padding(
          padding: EdgeInsets.all(Responsive.w(24, context)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Item Cost",
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: Responsive.w(15, context)),
                  ),
                  Text(
                    "\$540",
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: Responsive.w(15, context)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Cost",
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: Responsive.w(15, context)),
                  ),
                  Text(
                    "\$10",
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: Responsive.w(15, context)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Cost",
                    style: TextStyle(
                        color: AppColors.primaryTheme,
                        fontSize: Responsive.w(18, context),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$550",
                    style: TextStyle(
                        color: AppColors.primaryTheme,
                        fontSize: Responsive.w(18, context),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const PaymentPage();
                    },
                  ));
                },
                child: Container(
                  height: Responsive.h(50, context),
                  decoration: BoxDecoration(
                    color: AppColors.primaryTheme,
                    borderRadius:
                        BorderRadius.circular(Responsive.w(20, context)),
                  ),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Column address(BuildContext context) {
  // var activeStep = 0;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        margin: EdgeInsets.all(Responsive.w(8, context)),
        height: Responsive.h(120, context),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(Responsive.w(10, context))),
            color: Colors.white,
            boxShadow: [
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
        padding: EdgeInsets.all(Responsive.w(10, context)),
        margin: EdgeInsets.all(Responsive.w(10, context)),
        height: Responsive.h(150, context),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(Responsive.w(10, context))),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 3,
                spreadRadius: 1,
                color: Color(0x1F000000),
              )
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Deliver to :",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: Responsive.w(15, context),
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddressChange(),
                          ));
                    },
                    child: Text(
                      "Change",
                      style: TextStyle(
                          // color: AppColors.textColor,
                          fontSize: Responsive.w(15, context),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      )
    ],
  );
}
