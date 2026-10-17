import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance_app/features/home/widgets/custom_carousel_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselHomeView extends StatelessWidget {
  const CarouselHomeView({super.key, this.onPageChanged});
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        CustomCarouselContainer(
          cardName: "X-Card",
          price: "23400 EG",
          cardSerial: "****  3434",
          cardDate: "12/24",
        ),
        CustomCarouselContainer(
          color: Color(0XFF303A6E),
          cardName: "M-Card",
          price: "3209 EG",
          cardSerial: "****  4545",
          cardDate: "12/24",
        ),
        CustomCarouselContainer(
          color: Color(0XFFFF7438),
          cardName: "L-Card",
          price: "34200 EG",
          cardSerial: "****  4242",
          cardDate: "12/24",
        ),
      ],

      options: CarouselOptions(
        onPageChanged: onPageChanged,
        height: 263.h,
        autoPlay: false,
        enlargeCenterPage: true,
        enlargeFactor: 0.18,
        viewportFraction: 0.65,
        padEnds: false,
      ),
    );
  }
}
