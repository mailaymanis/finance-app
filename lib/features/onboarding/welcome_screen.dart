import 'package:finance_app/core/helper/app_routes.dart';
import 'package:finance_app/core/widgets/custom_primary_button.dart';
import 'package:finance_app/core/widgets/custom_secondary_button.dart';
import 'package:finance_app/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/welcome.png",
            width: 375.w,
            height: 570.h,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(
              top: 20.h,
              left: 22.w,
              right: 22.w,
            ),
            child: CustomPrimaryButton(
              text: "Login",
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.loginScreenRoute,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(
              top: 20.h,
              left: 22.w,
              right: 22.w,
            ),
            child: CustomSecondaryButton(
              text: "Register",
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.registerScreenRoute,
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.only(top: 40.h),
            child: Center(
              child: Text(
                "Continue as a guest",
                style: TextStyle(
                  color: AppColors.thirdColor,
                  fontFamily: 'Bold',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: AppColors.thirdColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
