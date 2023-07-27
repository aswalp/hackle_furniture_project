import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/provider/detail_page_image_value_provider/detail_image_color.dart';

import '../../../provider/detail_page_image_value_provider/detail_value.dart';
import '../../../utils/responsive_util.dart';
import 'detail_screen_menu_container.dart';

class BuildSideChanger extends ConsumerWidget {
  const BuildSideChanger({
    super.key,
    required this.carouselController,
  });

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(detailColorProvider) == 0
        ? Row(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  carouselController.animateToPage(0,
                      curve: Curves.linear,
                      duration: const Duration(milliseconds: 500));
                  ref.read(detailValueProvider.notifier).state = 0;
                },
                child: BuildMenuContainer(
                    isSelected: ref.watch(detailValueProvider) == 0,
                    images: Image.asset(
                        "assets/images/Furniture - 1/Side 1/1.png")),
              ),
              SizedBox(
                width: Responsive.w(5, context),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  carouselController.animateToPage(1,
                      curve: Curves.linear,
                      duration: const Duration(milliseconds: 500));
                  ref.read(detailValueProvider.notifier).state = 1;
                },
                child: BuildMenuContainer(
                  isSelected: ref.watch(detailValueProvider) == 1,
                  images: Image.asset(
                    "assets/images/Furniture - 1/Side 2/1.png",
                  ),
                ),
              ),
              SizedBox(
                width: Responsive.w(5, context),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  carouselController.animateToPage(2,
                      curve: Curves.linear,
                      duration: const Duration(milliseconds: 500));
                  ref.read(detailValueProvider.notifier).state = 2;
                },
                child: BuildMenuContainer(
                  isSelected: ref.watch(detailValueProvider) == 2,
                  images:
                      Image.asset("assets/images/Furniture - 1/Side 3/1.png"),
                ),
              )
            ],
          )
        : ref.watch(detailColorProvider) == 1
            ? Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      carouselController.animateToPage(0,
                          curve: Curves.linear,
                          duration: const Duration(milliseconds: 500));
                      ref.read(detailValueProvider.notifier).state = 0;
                    },
                    child: BuildMenuContainer(
                        isSelected: ref.watch(detailValueProvider) == 0,
                        images: Image.asset(
                            "assets/images/Furniture - 1/Side 1/2.png")),
                  ),
                  SizedBox(
                    width: Responsive.w(5, context),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      carouselController.animateToPage(1,
                          curve: Curves.linear,
                          duration: const Duration(milliseconds: 500));
                      ref.read(detailValueProvider.notifier).state = 1;
                    },
                    child: BuildMenuContainer(
                      isSelected: ref.watch(detailValueProvider) == 1,
                      images: Image.asset(
                        "assets/images/Furniture - 1/Side 2/2.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Responsive.w(5, context),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      carouselController.animateToPage(2,
                          curve: Curves.linear,
                          duration: const Duration(milliseconds: 500));
                      ref.read(detailValueProvider.notifier).state = 2;
                    },
                    child: BuildMenuContainer(
                      isSelected: ref.watch(detailValueProvider) == 2,
                      images: Image.asset(
                          "assets/images/Furniture - 1/Side 3/2.png"),
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      carouselController.animateToPage(0,
                          curve: Curves.linear,
                          duration: const Duration(milliseconds: 500));
                      ref.read(detailValueProvider.notifier).state = 0;
                    },
                    child: BuildMenuContainer(
                        isSelected: ref.watch(detailValueProvider) == 0,
                        images: Image.asset(
                            "assets/images/Furniture - 1/Side 1/3.png")),
                  ),
                  SizedBox(
                    width: Responsive.w(5, context),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      carouselController.animateToPage(1,
                          curve: Curves.linear,
                          duration: const Duration(milliseconds: 500));
                      ref.read(detailValueProvider.notifier).state = 1;
                    },
                    child: BuildMenuContainer(
                      isSelected: ref.watch(detailValueProvider) == 1,
                      images: Image.asset(
                        "assets/images/Furniture - 1/Side 2/3.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Responsive.w(5, context),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      carouselController.animateToPage(2,
                          curve: Curves.linear,
                          duration: const Duration(milliseconds: 500));
                      ref.read(detailValueProvider.notifier).state = 2;
                    },
                    child: BuildMenuContainer(
                      isSelected: ref.watch(detailValueProvider) == 2,
                      images: Image.asset(
                          "assets/images/Furniture - 1/Side 3/3.png"),
                    ),
                  )
                ],
              );
  }
}
