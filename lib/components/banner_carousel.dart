import 'package:flutter/material.dart';
import 'package:praktikum_5/configs/demo.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: PageView.builder(
        itemCount: banners.length,
        itemBuilder:
            (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(banners[index], fit: BoxFit.cover),
            ),
      ),
    );
  }
}
