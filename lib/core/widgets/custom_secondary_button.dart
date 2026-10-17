import 'package:finance_app/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSecondaryButton extends StatelessWidget {
  const CustomSecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(331.w, 56.h),
        backgroundColor: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8.r),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Regular',
          fontWeight: FontWeight.w600,
          fontSize: 15.sp,
          color: AppColors.primaryColor,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
