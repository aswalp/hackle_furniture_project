import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../provider/detail_page_image_value_provider/detail_image_color.dart';
import '../../../provider/detail_page_image_value_provider/detail_value.dart';
import '../../../utils/responsive_util.dart';
import 'detail_screen_scrollview.dart';
import 'detail_screen_zoom_page.dart';

class BuildChairChanges extends ConsumerWidget {
  const BuildChairChanges({
    super.key,
    required this.carouselController,
  });

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailScreenZoom(),
            ));
      },
      child: ref.watch(detailColorProvider) == 0
          ? CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                viewportFraction: 1,
                enableInfiniteScroll: true,
                height: Responsive.h(358, context),
                onPageChanged: (index, reason) =>
                    ref.read(detailValueProvider.notifier).state = index,
              ),
              items: [
                BuildImageScrollView(
                  images:
                      Image.asset("assets/images/Furniture - 1/Side 1/1.png"),
                ),
                BuildImageScrollView(
                  images:
                      Image.asset("assets/images/Furniture - 1/Side 2/1.png"),
                ),
                BuildImageScrollView(
                  images:
                      Image.asset("assets/images/Furniture - 1/Side 3/1.png"),
                ),
              ],
            )
          : ref.watch(detailColorProvider) == 1
              ? CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    height: Responsive.h(358, context),
                    onPageChanged: (index, reason) =>
                        ref.read(detailValueProvider.notifier).state = index,
                  ),
                  items: [
                    BuildImageScrollView(
                      images: Image.asset(
                          "assets/images/Furniture - 1/Side 1/2.png"),
                    ),
                    BuildImageScrollView(
                      images: Image.asset(
                          "assets/images/Furniture - 1/Side 2/2.png"),
                    ),
                    BuildImageScrollView(
                      images: Image.asset(
                          "assets/images/Furniture - 1/Side 3/2.png"),
                    ),
                  ],
                )
              : CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    height: Responsive.h(358, context),
                    onPageChanged: (index, reason) =>
                        ref.read(detailValueProvider.notifier).state = index,
                  ),
                  items: [
                    BuildImageScrollView(
                      images: Image.asset(
                          "assets/images/Furniture - 1/Side 1/3.png"),
                    ),
                    BuildImageScrollView(
                      images: Image.asset(
                          "assets/images/Furniture - 1/Side 2/3.png"),
                    ),
                    BuildImageScrollView(
                      images: Image.asset(
                          "assets/images/Furniture - 1/Side 3/3.png"),
                    ),
                  ],
                ),
    );
  }
}
