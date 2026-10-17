import 'package:finance_app/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({
    super.key,
    required this.cardName,
    required this.price,
    required this.cardSerial,
    required this.cardDate,
    this.color,
  });
  final String cardName;
  final String price;
  final String cardSerial;
  final String cardDate;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 179.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.primaryColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 24.h,
            left: 24.w,
            child: Text(
              cardName,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: Color(0XFFFDFDFD),
              ),
            ),
          ),
          Positioned(
            top: 24.h,
            left: 260.w,
            child: Image.asset("assets/images/Group 1.png"),
          ),
          Positioned(
            top: 60.h,
            left: 24.w,
            child: Text(
              "Balance",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Color(0XFFFDFDFD),
              ),
            ),
          ),
          Positioned(
            top: 90.h,
            left: 24.w,
            child: Text(
              price,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.sp,
                color: Color(0XFFFDFDFD),
              ),
            ),
          ),
          Positioned(
            // top: 215.h,
            left: 24.w,
            bottom: 15.h,
            child: Text(
              cardSerial,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: Color(0XFFFDFDFD),
              ),
            ),
          ),
          Positioned(
            // top: 215.h,
            right: 26.w,
            bottom: 15.h,
            child: Text(
              cardDate,
              style: TextStyle(
                fontFamily: 'Medium',
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: Color(0XFFFDFDFD),
              ),
            ),
          ),
          Positioned(
            top: 60.h,
            right: 9.w,
            left: 10.w,
            child: Image.asset("assets/images/Ellipse14.png"),
          ),
          Positioned(
            top: 100.h,
            right: 80.w,
            left: 0.w,
            child: Image.asset("assets/images/Ellipse15.png"),
          ),
        ],
      ),
    );
  }
}
