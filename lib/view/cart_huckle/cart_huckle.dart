import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackle_furniture_project/utils/app_colors.dart';
import 'package:hackle_furniture_project/utils/responsive_util.dart';
import 'package:hackle_furniture_project/view/address_huckle/addresshuckle.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

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
              "Cart",
            ),
          ),
          SliverToBoxAdapter(
            child: cartpage(context),
          ),
          // const SliverAppBar(
          //   pinned: true,
          //   primary: false,
          //   toolbarHeight: 150,
          //   title: Column(
          //     children: [
          //       Text("Shopping Cart"),
          //       Divider(
          //         height: 3,
          //         color: Colors.black,
          //       ),
          //       Row(
          //         children: [Text("Product Cost"), Text("\$540")],
          //       ),
          //       Row(
          //         children: [Text("Delivery Cost"), Text("\$20")],
          //       ),
          //       Row(
          //         children: [Text("Total Cost"), Text("\$560")],
          //       )
          //     ],
          //   ),
          // ),
          // BottomSheet(
          //   onClosing: () {},
          //   builder: (context) {
          //     return Container();
          //   },
          // ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const DeliveryAddress();
                  })));
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
                      "Checkout",
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

  Column cartpage(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          padding: EdgeInsets.all(Responsive.w(8, context)),
          itemCount: 3,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
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
              height: 150,
              // color: Colors.amber,
              margin: EdgeInsets.all(Responsive.w(8, context)),
              padding: EdgeInsets.all(Responsive.w(8, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SvgPicture.asset(
                    "assets/icons/fluent_delete-28-filled.svg",
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Responsive.w(10, context)),
                      color: AppColors.imageBgColor,
                    ),
                    // margin: EdgeInsets.all(8),
                    height: Responsive.h(120, context),
                    width: Responsive.w(120, context),

                    child:
                        Image.asset("assets/images/Furniture - 1/Side 1/1.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: Responsive.h(20, context),
                      ),
                      Text(
                        "Modern chair",
                        style: TextStyle(
                            color: AppColors.primaryTheme,
                            fontSize: Responsive.w(15, context),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Armchair High",
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                      SizedBox(
                        height: Responsive.h(10, context),
                      ),
                      Row(
                        children: [
                          const Text(
                            "\$180",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: Responsive.w(20, context),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff929797)),
                            width: Responsive.w(69, context),
                            height: Responsive.h(26, context),
                            child: Padding(
                              padding: EdgeInsets.all(Responsive.w(3, context)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    // onTap: () {
                                    //   if (ref.watch(itemCountProvider) > 1) {
                                    //     ref
                                    //         .watch(itemCountProvider.notifier)
                                    //         .state--;
                                    //   }
                                    // },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: Responsive.w(10, context),
                                      child: SvgPicture.asset(
                                          "assets/icons/ph_minus-light.svg"),
                                    ),
                                  ),
                                  const Text('1'),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: Responsive.w(10, context),
                                    child: SvgPicture.asset(
                                        "assets/icons/ph_plus.svg"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

//  CircleAvatar(
//                             backgroundColor:
//                                 Color.fromARGB(254, 244, 244, 244),
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text("0"),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           CircleAvatar(
//                             backgroundColor: AppColors.imageBgColor,
//                           )


// Container(
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(20),
                      //       color: const Color(0xff929797)),
                      //   width: Responsive.w(67, context),
                      //   height: Responsive.h(23, context),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(2.0),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         CircleAvatar(
                      //           backgroundColor: Colors.white,
                      //           child: SvgPicture.asset(
                      //               "assets/icons/ph_minus-light.svg"),
                      //         ),
                      //         CircleAvatar(
                      //           backgroundColor: Colors.white,
                      //           child: SvgPicture.asset(
                      //               "assets/icons/ph_minus-light.svg"),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // )
                      