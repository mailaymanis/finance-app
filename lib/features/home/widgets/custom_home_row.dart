import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeRow extends StatelessWidget {
  const CustomHomeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/mypic.jpg",
                width: 48.w,
                height: 48.h,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(width: 11.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Color(0XFF9CA4AB),
                  ),
                ),
                Text(
                  "Ayman Elkafrawy",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0XFFE3E9ED), width: 1.w),
          ),
          child: Image.asset("assets/images/Notification.png"),
        ),
      ],
    );
  }
}
