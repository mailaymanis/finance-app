import 'package:finance_app/core/helper/app_colors.dart';
import 'package:finance_app/core/helper/app_routes.dart';
import 'package:finance_app/features/auth/forgot_password_screen.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/otp_verification_screen.dart';
import 'package:finance_app/features/auth/password_changed_screen.dart';
import 'package:finance_app/features/auth/register_screen.dart';
import 'package:finance_app/features/home/screens/home_screen.dart';
import 'package:finance_app/features/layout/layout_screen.dart';
import 'package:finance_app/features/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldColor,
          fontFamily: 'Urbanist',
        ),
        home: WelcomeScreen(),
        routes: {
          AppRoutes.welcomeScreenRoute: (context) => const WelcomeScreen(),
          AppRoutes.loginScreenRoute: (context) => const LoginScreen(),
          AppRoutes.registerScreenRoute: (context) => const RegisterScreen(),
          AppRoutes.forgotPasswordScreenRoute: (context) =>
              const ForgotPasswordScreen(),
          AppRoutes.passwordChangedScreenRoute: (context) =>
              const PasswordChangedScreen(),
          AppRoutes.otpVerificationScreenRoute: (context) =>
              const OtpVerificationScreen(),
          AppRoutes.homeScreenRoute: (context) => const HomeScreen(),
          AppRoutes.layoutScreenRoute: (context) => const LayoutScreen(),
        },
      ),
    );
  }
}
