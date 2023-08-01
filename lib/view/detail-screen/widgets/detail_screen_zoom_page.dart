import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackle_furniture_project/provider/detail_page_image_value_provider/detail_image_color.dart';
import 'package:hackle_furniture_project/provider/detail_page_image_value_provider/detail_value.dart';
import 'package:photo_view/photo_view.dart';

import '../../../utils/app_colors.dart';

class DetailScreenZoom extends ConsumerStatefulWidget {
  const DetailScreenZoom({super.key});

  @override
  ConsumerState<DetailScreenZoom> createState() => _DetailScreenZoomState();
}

class _DetailScreenZoomState extends ConsumerState<DetailScreenZoom> {
  late PhotoViewScaleStateController scaleStateController;
  @override
  void initState() {
    super.initState();
    scaleStateController = PhotoViewScaleStateController();
  }

  @override
  void dispose() {
    scaleStateController.dispose();
    super.dispose();
  }

  void goBack() {
    scaleStateController.scaleState = PhotoViewScaleState.originalSize;
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller =
        PageController(initialPage: ref.watch(detailValueProvider));
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackGroundColor,
        body: ref.watch(detailColorProvider) == 0
            ? PageView(
                controller: controller,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    child: PhotoView(
                      minScale: 1.2,
                      maxScale: 1.2,
                      backgroundDecoration: const BoxDecoration(
                          color: AppColors.scaffoldBackGroundColor),
                      imageProvider: const AssetImage(
                          "assets/images/Furniture - 1/Side 1/1.png"),
                      scaleStateController: scaleStateController,
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    child: PhotoView(
                      minScale: 0.4,
                      maxScale: 0.4,
                      backgroundDecoration: const BoxDecoration(
                          color: AppColors.scaffoldBackGroundColor),
                      imageProvider: const AssetImage(
                          "assets/images/Furniture - 1/Side 2/1.png"),
                      scaleStateController: scaleStateController,
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    child: PhotoView(
                      minScale: 0.4,
                      maxScale: 0.4,
                      backgroundDecoration: const BoxDecoration(
                          color: AppColors.scaffoldBackGroundColor),
                      imageProvider: const AssetImage(
                          "assets/images/Furniture - 1/Side 3/1.png"),
                      scaleStateController: scaleStateController,
                    ),
                  ),
                ],
              )
            : ref.watch(detailColorProvider) == 1
                ? PageView(
                    controller: controller,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        child: PhotoView(
                          minScale: 1.2,
                          maxScale: 1.2,
                          backgroundDecoration: const BoxDecoration(
                              color: AppColors.scaffoldBackGroundColor),
                          imageProvider: const AssetImage(
                              "assets/images/Furniture - 1/Side 1/2.png"),
                          scaleStateController: scaleStateController,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        child: PhotoView(
                          minScale: 0.4,
                          maxScale: 0.4,
                          backgroundDecoration: const BoxDecoration(
                              color: AppColors.scaffoldBackGroundColor),
                          imageProvider: const AssetImage(
                              "assets/images/Furniture - 1/Side 2/2.png"),
                          scaleStateController: scaleStateController,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        child: PhotoView(
                          minScale: 0.4,
                          maxScale: 0.4,
                          backgroundDecoration: const BoxDecoration(
                              color: AppColors.scaffoldBackGroundColor),
                          imageProvider: const AssetImage(
                              "assets/images/Furniture - 1/Side 3/2.png"),
                          scaleStateController: scaleStateController,
                        ),
                      ),
                    ],
                  )
                : PageView(
                    controller: controller,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        child: PhotoView(
                          minScale: 1.2,
                          maxScale: 1.2,
                          backgroundDecoration: const BoxDecoration(
                              color: AppColors.scaffoldBackGroundColor),
                          imageProvider: const AssetImage(
                              "assets/images/Furniture - 1/Side 1/3.png"),
                          scaleStateController: scaleStateController,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        child: PhotoView(
                          minScale: 0.4,
                          maxScale: 0.4,
                          backgroundDecoration: const BoxDecoration(
                              color: AppColors.scaffoldBackGroundColor),
                          imageProvider: const AssetImage(
                              "assets/images/Furniture - 1/Side 2/3.png"),
                          scaleStateController: scaleStateController,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        child: PhotoView(
                          minScale: 0.4,
                          maxScale: 0.4,
                          backgroundDecoration: const BoxDecoration(
                              color: AppColors.scaffoldBackGroundColor),
                          imageProvider: const AssetImage(
                              "assets/images/Furniture - 1/Side 3/3.png"),
                          scaleStateController: scaleStateController,
                        ),
                      ),
                    ],
                  ));
  }
}
