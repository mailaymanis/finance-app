import 'package:finance_app/core/helper/app_colors.dart';
import 'package:finance_app/core/helper/app_routes.dart';
import 'package:finance_app/core/widgets/custom_arrow_back_button.dart';
import 'package:finance_app/core/widgets/custom_confirm_password_form_field.dart';
import 'package:finance_app/core/widgets/custom_password_form_field.dart';
import 'package:finance_app/core/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

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
              "Create new password",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontFamily: 'Bold',
                fontWeight: FontWeight.w700,
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Your new password must be unique from those\n previously used.",
              style: TextStyle(
                color: Color(0XFF8391A1),
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(height: 40.h),
            CustomPasswordFormField(hintText: "New Password"),
            SizedBox(height: 20.h),
            CustomConfirmPasswordFormField(),
            SizedBox(height: 40.h),
            CustomPrimaryButton(text: "Reset Password", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
