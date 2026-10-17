import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.asset(
          "assets/images/mypic.jpg",
          width: 100.w,
          height: 100.h,
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
