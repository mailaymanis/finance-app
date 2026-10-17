import 'package:finance_app/core/helper/app_colors.dart';
import 'package:finance_app/core/helper/app_routes.dart';
import 'package:finance_app/core/widgets/custom_arrow_back_button.dart';
import 'package:finance_app/core/widgets/custom_confirm_password_form_field.dart';
import 'package:finance_app/core/widgets/custom_containter_image.dart';
import 'package:finance_app/core/widgets/custom_email_form_field.dart';
import 'package:finance_app/core/widgets/custom_password_form_field.dart';
import 'package:finance_app/core/widgets/custom_primary_button.dart';
import 'package:finance_app/core/widgets/custom_user_name_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              "Hello! Register to get\n started",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontFamily: 'Bold',
                fontWeight: FontWeight.w700,
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 30.h),
            CustomUserNameFormField(),
            SizedBox(height: 15.h),
            CustomEmailFormField(hintText: "Email"),
            SizedBox(height: 15.h),
            CustomPasswordFormField(hintText: "Password"),
            SizedBox(height: 15.h),
            CustomConfirmPasswordFormField(),
            SizedBox(height: 30.h),
            CustomPrimaryButton(text: 'Register', onPressed: () {}),
            SizedBox(height: 40.h),
            CustomContainterImage(text: 'Or Register with'),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
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
                    'Login Now',
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
