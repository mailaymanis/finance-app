import 'package:finance_app/core/helper/app_colors.dart';
import 'package:finance_app/core/helper/app_routes.dart';
import 'package:finance_app/core/widgets/custom_arrow_back_button.dart';
import 'package:finance_app/core/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 56.h, left: 22.w),
            child: CustomArrowBackButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.loginScreenRoute,
                  (route) => false,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 28.h, left: 22.w),
            child: Text(
              "OTP Verification",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 10.h, left: 22.w),
            child: Text(
              "Enter the verification code we just sent on your\nemail address.",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0XFF838BA1),
              ),
            ),
          ),
          SizedBox(height: 32.h),
          Center(
            child: MaterialPinField(
              length: 4,
              keyboardType: TextInputType.number,
              theme: MaterialPinTheme(
                animationCurve: Curves.easeInOut,
                cellSize: Size(70.w, 70.h),
                animateCursor: true,
                borderColor: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(8.r),
                borderWidth: 1.5.w,
                errorColor: Colors.red,
                errorTextStyle: TextStyle(color: Colors.red),
                cursorColor: AppColors.primaryColor,
                disabledBorderColor: AppColors.secondaryColor,
                disabledColor: Color(0XFFE8ECF4),
                fillColor: AppColors.secondaryColor,
                filledBorderColor: AppColors.primaryColor,
                focusedFillColor: Colors.white,
                filledFillColor: AppColors.primaryColor,
                errorFillColor: Colors.red,
                hintStyle: TextStyle(color: AppColors.primaryColor),
              ),
            ),
          ),
          SizedBox(height: 38.h),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 22.w, right: 22.w),
            child: CustomPrimaryButton(
              text: 'Verify',
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.layoutScreenRoute,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
