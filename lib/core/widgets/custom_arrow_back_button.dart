import 'package:finance_app/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomArrowBackButton extends StatelessWidget {
  const CustomArrowBackButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 41.w,
      height: 41.h,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(1.r),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_back_ios,
          size: 21.h,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
