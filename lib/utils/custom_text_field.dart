import 'dart:ui';

import 'package:ez_receipt/utils/app_colors.dart';
import 'package:ez_receipt/utils/device_size_manager.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final double? height;
  final double width;
  final TextEditingController? controller;
  final String? hintText;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final String? Function(String?)? onValidated;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;
  final Color filledColor;
  final TextInputType? keyboardType;
  final int minLines;
  final int maxLines;
  final double borderRadius;
  final bool obSecureText;
  final GlobalKey? fieldKey;
  final FocusNode? focusNode;

  const CustomTextField({
    super.key,
    this.height = 60.0,
    this.width = double.infinity,
    this.controller,
    this.hintText,
    this.onChanged,
    this.onValidated,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly = false,
    this.keyboardType,
    this.filledColor = whiteColor,
    this.minLines = 1,
    this.maxLines = 1,
    this.borderRadius = 12,
    this.obSecureText = false,
    this.fieldKey,
    this.focusNode

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          // height: 55.v,
          child: TextFormField(
            selectionHeightStyle: BoxHeightStyle.max,
            key: fieldKey,
            controller: controller,
            focusNode: focusNode,
            onChanged: onChanged,
            readOnly: readOnly,
            keyboardType: keyboardType,
            obscureText: obSecureText,
            maxLines: maxLines,
            minLines: minLines,
            validator: onValidated,
            onTap: onTap,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            cursorHeight: 22.adaptSize,
            cursorColor: greenColor,
            style: TextStyle(color: blackColor.withOpacity(0.7), fontSize: 14.fSize, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              // helperText: " ",
              filled: true,
              fillColor: filledColor,
              hintText: hintText,
              hintStyle: TextStyle(color: blackColor.withOpacity(0.7), fontSize: 14.fSize),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius.adaptSize),
                borderSide: BorderSide.none,
              ),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius.adaptSize),
                borderSide: const BorderSide(
                  color: greenColor,
                  width: 2,
                ),
              ),
              errorMaxLines: 5,
              errorStyle: TextStyle(fontSize: 12.fSize,),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius.adaptSize),
                borderSide: const BorderSide(
                  color: errorColor,
                  width: 1,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 25.h,
                // vertical: 19.v
              ),
            ),
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
        SizedBox(height: 5.v), // Space for error message

      ],
    );
  }
}



class CustomTextFieldMultiline extends StatelessWidget {
  final double? height;
  final double width;
  final TextEditingController? controller;
  final String? hintText;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final String? Function(String?)? onValidated;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;
  final Color filledColor;
  final TextInputType? keyboardType;
  final int minLines;
  final int maxLines;
  final int? maxLength;
  final double borderRadius;
  final bool obSecureText;
  final GlobalKey? fieldKey;
  final FocusNode? focusNode;

  const CustomTextFieldMultiline({
    super.key,
    this.height = 60,
    this.width = double.infinity,
    this.controller,
    this.hintText,
    this.onChanged,
    this.onValidated,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly = false,
    this.keyboardType,
    this.filledColor = whiteColor,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength,
    this.borderRadius = 12,
    this.obSecureText = false,
    this.fieldKey,
    this.focusNode

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          // height: 55.v,
          child: TextFormField(
            selectionHeightStyle: BoxHeightStyle.max,
            key: fieldKey,
            controller: controller,
            focusNode: focusNode,
            onChanged: onChanged,
            readOnly: readOnly,
            keyboardType: keyboardType,
            obscureText: obSecureText,
            maxLines: maxLines,
            minLines: minLines,
            maxLength: maxLength,
            validator: onValidated,
            onTap: onTap,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            cursorHeight: 22.adaptSize,
            cursorColor: greenColor,
            style: TextStyle(color: blackColor.withOpacity(0.7), fontSize: 14.fSize, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              // helperText: " ",
              filled: true,
              fillColor: filledColor,
              hintText: hintText,
              hintStyle: TextStyle(color: blackColor.withOpacity(0.7), fontSize: 14.fSize),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius.adaptSize),
                borderSide: BorderSide.none,
              ),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius.adaptSize),
                borderSide: const BorderSide(
                  color: greenColor,
                  width: 2,
                ),
              ),
              errorStyle: TextStyle(fontSize: 12.fSize),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius.adaptSize),
                borderSide: const BorderSide(
                  color: errorColor,
                  width: 1,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 10.v
              ),
            ),
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
        const SizedBox(height: 5), // Space for error message

      ],
    );
  }
}

