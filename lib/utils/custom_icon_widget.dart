
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class CustomIcon {
  Widget showIcon({
    required String iconPath,
    required double height,
    required double width,
    Color? color,  
  });
}


class CustomSvgIcon extends CustomIcon {
  @override
  Widget showIcon({
    required String iconPath,
    required double height,
    required double width,
    Color? color, 
  }) {
    return SvgPicture.asset(
      iconPath, 
      height: height,
      width: width,
      color: color,
      // allowDrawingOutsideViewBox: true,
    );
  }
}


class CustomAssetIcon extends CustomIcon {
  @override
  Widget showIcon({
    required String iconPath,
    required double height,
    required double width,
    Color? color, 
  }) {
    return Image.asset(
      iconPath,
      height: height,
      width: width,
      color: color,
    );
  }
}

class CustomIconWidget extends StatelessWidget {
  final CustomIcon iconType;
  final String iconPath;
  final double height;
  final double width;
  final Color? color;

  const CustomIconWidget({
    super.key, 
    required this.iconType,
    required this.iconPath,
    required this.height,
    required this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return iconType.showIcon(
      iconPath: iconPath,
      height: height,
      width: width,
      color: color, 
    );
  }
}
