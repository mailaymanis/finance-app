import 'package:finance_app/core/helper/app_colors.dart';
import 'package:finance_app/core/helper/app_routes.dart';
import 'package:finance_app/core/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(
              top: 248.h,
              left: 138.w,
              right: 138.w,
            ),
            child: SizedBox(
              width: 100.w,
              height: 100.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 0.h,
                    left: 0.w,
                    child: Image.asset(
                      "assets/images/vector1.png",
                      width: 100.w,
                      height: 100.h,
                    ),
                  ),
                  Positioned(
                    top: 33.46.h,
                    left: 26.31.w,
                    child: Image.asset(
                      "assets/images/vector2.png",
                      width: 46.98.w,
                      height: 36.45.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            "Password Changed!",
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 26.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Your password has been changed\n successfully.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0XFF8391A1),
              fontFamily: 'Meduim',
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 40.h),
          CustomPrimaryButton(
            text: "Back to Login",
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.loginScreenRoute,
              );
            },
          ),
        ],
      ),
    );
  }
}
