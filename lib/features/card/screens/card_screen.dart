import 'package:finance_app/features/card/widgets/custom_card_row.dart';
import 'package:finance_app/features/card/widgets/custom_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 24.w, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60.h),
              CustomCardRow(),
              SizedBox(height: 24.h),
              CustomCardView(
                cardName: "X-Card",
                price: "23400 EG",
                cardSerial: "****  3434",
                cardDate: "12/24",
              ),
              SizedBox(height: 24.h),
              CustomCardView(
                color: Color(0XFF303A6E),
                cardName: "M-Card",
                price: "3209 EG",
                cardSerial: "****  4545",
                cardDate: "12/24",
              ),
              SizedBox(height: 24.h),
              CustomCardView(
                color: Color(0XFFFF7438),
                cardName: "L-Card",
                price: "34200 EG",
                cardSerial: "****  4242",
                cardDate: "12/24",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
