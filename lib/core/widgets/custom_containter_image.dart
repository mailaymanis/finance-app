import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainterImage extends StatelessWidget {
  const CustomContainterImage({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331.w,
      height: 95.h,
      color: Color(0XFFE8ECF4),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Align(
            child: Text(
              text,
              style: TextStyle(
                color: Color(0XFF6A707C),
                fontFamily: 'Regular',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 105.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/facebook_icon.png'),

                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              Container(
                width: 105.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/google_icon.png'),

                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              Container(
                width: 105.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/apple_icon.png'),
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
