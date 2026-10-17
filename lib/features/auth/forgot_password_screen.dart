import 'package:finance_app/core/helper/app_colors.dart';
import 'package:finance_app/core/helper/app_routes.dart';
import 'package:finance_app/core/widgets/custom_arrow_back_button.dart';
import 'package:finance_app/core/widgets/custom_email_form_field.dart';
import 'package:finance_app/core/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                    AppRoutes.loginScreenRoute,
                    (route) => false,
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Forgot Password?",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontFamily: 'Bold',
                fontWeight: FontWeight.w700,
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Don't worry! It occurs. Please enter the email\n address linked with your account.",
              style: TextStyle(
                color: Color(0XFF8391A1),
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 40.h),
            CustomEmailFormField(hintText: "Enter your email"),
            SizedBox(height: 40.h),
            CustomPrimaryButton(text: "Send Code", onPressed: () {}),
            SizedBox(height: 330.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Remember Password? ',
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
                      AppRoutes.loginScreenRoute,
                    );
                  },
                  child: Text(
                    'Login',
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
