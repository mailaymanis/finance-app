import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridViewContainer extends StatelessWidget {
  const CustomGridViewContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 140.h,
      decoration: BoxDecoration(
        color: Color(0XFFFDFDFD),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Color(0XFFE3E9ED), width: 1.w),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(
              top: 16.h,
              left: 54.w,
              right: 54.w,
            ),
            child: Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: Color(0XFFECF1F6),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Color(0XFF2D3748),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            description,
            style: TextStyle(
              fontFamily: 'Meduim',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Color(0XFF9CA4AB),
            ),
          ),
        ],
      ),
    );
  }
}
