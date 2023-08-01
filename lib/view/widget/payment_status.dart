import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/responsive_util.dart';

class PaymentStatus extends StatelessWidget {
  const PaymentStatus({
    super.key,
    required this.activeStep,
  });

  final int activeStep;

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: activeStep,
      padding: EdgeInsets.all(Responsive.w(40, context)),
      lineLength: 100,
      lineSpace: 0,
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
              radius: Responsive.w(8, context),
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: Responsive.w(7, context),
                backgroundColor:
                    activeStep >= 0 ? AppColors.primaryTheme : Colors.white,
              ),
            ),
            title: 'Address',
            topTitle: true),
        EasyStep(
          customStep: CircleAvatar(
            radius: Responsive.w(8, context),
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: Responsive.w(7, context),
              backgroundColor:
                  activeStep >= 1 ? AppColors.primaryTheme : Colors.white,
            ),
          ),
          title: 'Order Summary',
          topTitle: true,
        ),
        EasyStep(
          topTitle: true,
          customStep: CircleAvatar(
            radius: Responsive.w(8, context),
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: Responsive.w(7, context),
              backgroundColor:
                  activeStep >= 2 ? AppColors.primaryTheme : Colors.white,
            ),
          ),
          title: 'Payment',
        ),
      ],
    );
  }
}
