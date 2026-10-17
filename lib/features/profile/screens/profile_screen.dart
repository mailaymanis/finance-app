import 'package:finance_app/features/profile/widgets/custom_profile_body.dart';
import 'package:finance_app/features/profile/widgets/custom_profile_image.dart';
import 'package:finance_app/features/profile/widgets/custom_profile_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(
              top: 60.h,
              left: 24.w,
              right: 24.w,
            ),
            child: CustomProfileRow(),
          ),
          SizedBox(height: 50.h),
          CustomProfileImage(),
          SizedBox(height: 15.h),
          CustomProfileBody(title: "Full Name", data: "Ayman Elkafrawy"),
          CustomProfileBody(title: "Email", data: "aymanelkafrawy@gmail.com"),
          CustomProfileBody(title: "Phone Number", data: "+2001270862986"),
          CustomProfileBody(title: "Address", data: "Damietta,Egypt"),
        ],
      ),
    );
  }
}
