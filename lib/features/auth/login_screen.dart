import 'package:finance_app/core/helper/app_colors.dart';
import 'package:finance_app/core/helper/app_routes.dart';
import 'package:finance_app/core/widgets/custom_arrow_back_button.dart';
import 'package:finance_app/core/widgets/custom_containter_image.dart';
import 'package:finance_app/core/widgets/custom_email_form_field.dart';
import 'package:finance_app/core/widgets/custom_password_form_field.dart';
import 'package:finance_app/core/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 22.w, right: 22.w),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 56.h),
              child: CustomArrowBackButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.welcomeScreenRoute,
                    (route) => false,
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Welcome back!\nAgain!",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontFamily: 'Bold',
                fontWeight: FontWeight.w700,
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 30.h),
            CustomEmailFormField(hintText: "Enter your email"),
            SizedBox(height: 15.h),
            CustomPasswordFormField(hintText: "Enter your password"),
            SizedBox(height: 10.h),
            Align(
              alignment: AlignmentGeometry.centerEnd,
              child: GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.forgotPasswordScreenRoute,
                ),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0XFF6A707C),
                    fontFamily: 'Bold',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            CustomPrimaryButton(
              text: 'Login',
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.otpVerificationScreenRoute,
                );
              },
            ),

            SizedBox(height: 20.h),
            CustomContainterImage(text: 'Or Login with'),
            SizedBox(height: 140.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account? ',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.registerScreenRoute,
                    );
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      color: Color(0XFF202955),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
