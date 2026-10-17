import 'package:finance_app/core/widgets/custom_arrow_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStatisticRow extends StatelessWidget {
  const CustomStatisticRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 24.w, right: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomArrowBackButton(onPressed: () {}),
          Text(
            "Reload",
            style: TextStyle(
              fontFamily: 'Meduim',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Color(0XFFFEFEFE),
              shape: BoxShape.circle,
              border: Border.all(color: Color(0XFFF2F2F5), width: 1),
            ),
            child: Image.asset("assets/images/more1.png"),
          ),
        ],
      ),
    );
  }
}
