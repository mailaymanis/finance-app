import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDotsWidget extends StatelessWidget {
  const new({
    super.key,
    required this.currentIndexPage,
  });

  final int currentIndexPage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DotsIndicator(
        dotsCount: 3,
        position: currentIndexPage.toDouble(),
        decorator: DotsDecorator(
          activeColor: AppColors.primaryColor,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}