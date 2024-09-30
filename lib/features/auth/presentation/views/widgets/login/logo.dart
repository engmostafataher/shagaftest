import 'package:flutter/material.dart';
import 'package:shagaftest/core/utils/assets_image.dart';

class Logo
 extends StatelessWidget {
  const Logo
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 235,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AssetsImage.logo))
      ),
    );
  }
}