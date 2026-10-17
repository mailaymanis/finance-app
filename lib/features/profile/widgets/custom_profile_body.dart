import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileBody extends StatelessWidget {
  const CustomProfileBody({super.key, required this.title, required this.data});
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 24.w, right: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Meduim',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0XFF9CA4AB),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            data,
            style: TextStyle(
              fontFamily: 'Meduim',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0XFF1F2C37),
            ),
          ),
          SizedBox(height: 6.h),
          Divider(height: 0, thickness: 2, color: Color(0XFFF2F2F5)),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
