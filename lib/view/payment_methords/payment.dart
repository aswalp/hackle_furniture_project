import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/provider/payment_meathodprovider/payment_meathod.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

import '../../utils/responsive_util.dart';
import '../widget/payment_status.dart';

class PaymentPage extends ConsumerWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              "Payment page",
            ),
          ),
          SliverToBoxAdapter(child: paymentoption(context, ref))
        ],
      ),
    );
  }

  Column paymentoption(BuildContext context, WidgetRef ref) {
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
          child: const PaymentStatus(activeStep: 2),
        ),
        InkWell(
          onTap: () {
            ref.read(paymentmeathodprovider.notifier).state = 1;
          },
          child: Container(
            margin: EdgeInsets.all(Responsive.w(10, context)),
            height: Responsive.h(80, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(Responsive.w(10, context))),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 3,
                    spreadRadius: 1,
                    color: Color(0x1F000000),
                  )
                ]),
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: ref.watch(paymentmeathodprovider),
                  onChanged: (value) {
                    ref.read(paymentmeathodprovider.notifier).state = value!;
                  },
                ),
                Text(
                  "Cash on Delivery",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: Responsive.w(20, context),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            ref.read(paymentmeathodprovider.notifier).state = 2;
          },
          child: Container(
            margin: EdgeInsets.all(Responsive.w(10, context)),
            height: Responsive.h(80, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(Responsive.w(10, context))),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 3,
                    spreadRadius: 1,
                    color: Color(0x1F000000),
                  )
                ]),
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: ref.watch(paymentmeathodprovider),
                  onChanged: (value) {
                    ref.read(paymentmeathodprovider.notifier).state = value!;
                    carddetails(context);
                  },
                ),
                Text(
                  "Online Payment",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: Responsive.w(20, context),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Future<dynamic> carddetails(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.scaffoldBackGroundColor,
      builder: (context) => const CardInfo(),
    );
  }
}

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.all(Responsive.w(30, context)),
          child: const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Card number"),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(Responsive.w(20, context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: Responsive.h(50, context),
                width: Responsive.w(80, context),
                child: TextField(
                  onTap: () {
                    showMonthPicker(
                      context: context,
                      initialDate: DateTime.now(),
                    ).then((date) {
                      if (date != null) {}
                    });
                  },
                  decoration: const InputDecoration(hintText: "MM/YY"),
                ),
              ),
              SizedBox(
                height: Responsive.h(50, context),
                width: Responsive.w(80, context),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "CVV"),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: Responsive.h(50, context),
          width: Responsive.w(300, context),
          decoration: BoxDecoration(
              color: AppColors.primaryTheme,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "PAY \$2453",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Responsive.w(15, context)),
            ),
          ),
        )
      ],
    );
  }
}
