import 'package:finance_app/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserNameFormField extends StatelessWidget {
  const CustomUserNameFormField({super.key});

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
          hintText: "Username",
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
