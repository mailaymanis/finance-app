import 'package:finance_app/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPasswordFormField extends StatelessWidget {
  const CustomPasswordFormField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: AppColors.formFieldColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.visibility,
            color: AppColors.hintTextColor,
            size: 20.sp,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Medium',
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.hintTextColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
