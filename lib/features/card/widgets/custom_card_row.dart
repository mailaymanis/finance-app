import 'package:finance_app/core/widgets/custom_arrow_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardRow extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomArrowBackButton(onPressed: () {}),
        Text(
          "All Cards",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: Color(0XFFFEFEFE),
            shape: BoxShape.circle,
            border: Border.all(color: Color(0XFFF2F2F5)),
          ),
          child: Image.asset("assets/images/more1.png"),
        ),
      ],
    );
  }
}
