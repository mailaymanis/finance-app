import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridContainer extends StatelessWidget {
  const CustomGridContainer({
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
              left: 16.w,
              right: 92.w,
            ),
            child: Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: Color(0XFFE2E0E4),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 16.w, right: 63.w),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Color(0XFF2D3748),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 16.w, right: 80.w),
            child: Text(
              description,
              style: TextStyle(
                fontFamily: 'Meduim',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0XFF9CA4AB),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
