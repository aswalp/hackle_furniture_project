import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/delivery-status/widget/orderlist.dart';

class DeliveryStatus extends StatelessWidget {
  const DeliveryStatus({super.key});

  final int activeStep = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor: AppColors.scaffoldBackGroundColor,
            floating: true,
            backgroundColor: AppColors.scaffoldBackGroundColor,
            leading: Padding(
              padding: EdgeInsets.all(Responsive.w(8, context)),
              child: InkWell(
                borderRadius: BorderRadius.circular(60),
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff405D60),
                  ),
                ),
              ),
            ),
          ),
          SliverAppBar(
            surfaceTintColor: AppColors.scaffoldBackGroundColor,
            pinned: true,
            toolbarHeight: 100,
            backgroundColor: AppColors.scaffoldBackGroundColor,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Status",
                  style: TextStyle(
                      fontSize: Responsive.w(20, context),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryTheme),
                ),
                EasyStepper(
                  activeStep: activeStep,
                  padding: const EdgeInsets.all(20),

                  lineLength: 70,
                  lineSpace: 2,
                  lineType: LineType.normal,
                  defaultLineColor: Colors.white,
                  finishedLineColor: AppColors.primaryTheme,
                  activeStepTextColor: Colors.black87,
                  finishedStepTextColor: Colors.black87,
                  internalPadding: 0,
                  showLoadingAnimation: false,
                  stepRadius: 8,
                  showStepBorder: false,
                  // lineDotRadius: 1.5,
                  steps: [
                    EasyStep(
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: activeStep >= 0
                              ? AppColors.primaryTheme
                              : Colors.white,
                        ),
                      ),
                      title: 'Place Order',
                    ),
                    EasyStep(
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: activeStep >= 1
                              ? AppColors.primaryTheme
                              : Colors.white,
                        ),
                      ),
                      title: 'Invoice',
                      topTitle: true,
                    ),
                    EasyStep(
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: activeStep >= 2
                              ? AppColors.primaryTheme
                              : Colors.white,
                        ),
                      ),
                      title: 'Pickspack',
                    ),
                    EasyStep(
                      customStep: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: activeStep >= 3
                              ? AppColors.primaryTheme
                              : Colors.white,
                        ),
                      ),
                      title: 'Delivery',
                      topTitle: true,
                    ),
                  ],
                  onStepReached: (index) {},
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Items",
                    style: TextStyle(
                        fontSize: Responsive.w(20, context),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryTheme),
                  ),
                  Text(
                    "Order ID #345674",
                    style: TextStyle(
                        fontSize: Responsive.w(16, context),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryTheme),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: OrderList(),
          )
        ],
      ),
      // extendBody: true,
      bottomNavigationBar: Container(
        height: Responsive.h(100, context),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(2, 0),
            blurRadius: 3,
            spreadRadius: 1,
            color: Color(0x1F000000),
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: Responsive.h(40, context),
              width: Responsive.w(160, context),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.primaryTheme, width: 2)),
              child: Text(
                "Cancel Order",
                style: TextStyle(
                    fontSize: Responsive.w(16, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryTheme),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: Responsive.h(40, context),
              width: Responsive.w(160, context),
              decoration: BoxDecoration(
                color: AppColors.primaryTheme,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Message",
                style: TextStyle(
                    fontSize: Responsive.w(16, context),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
