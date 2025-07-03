import 'package:ez_receipt/utils/app_colors.dart';
import 'package:ez_receipt/utils/device_size_manager.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final double height;
  final double width;
  final BoxBorder? boxBorder;

  const CustomTextButton({
    super.key,
    required this.text,
    this.textStyle,
    this.onPressed,
    this.backgroundColor = greenColor,
    this.height = 53,
    this.width = double.infinity,
    this.boxBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12.adaptSize),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12.adaptSize),
        splashColor: Colors.white.withOpacity(0.3), // white ripple effect
        highlightColor: Colors.white.withOpacity(0.1),
        child: Container(
          height: height.v,
          width: width.h,
          decoration: BoxDecoration(
            border: boxBorder,
            borderRadius: BorderRadius.circular(12.adaptSize),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                    color: whiteColor,
                    fontSize: 16.fSize,
                    fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
