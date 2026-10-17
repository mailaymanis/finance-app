import 'package:finance_app/features/home/widgets/carousel_home_view.dart';
import 'package:finance_app/features/home/widgets/custom_dots_widget.dart';
import 'package:finance_app/features/home/widgets/custom_grid_view_container.dart';
import 'package:finance_app/features/home/widgets/custom_home_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 25.w, right: 24.w, top: 63.h),
        child: Column(
          children: [
            CustomHomeRow(),
            SizedBox(height: 24.h),
            CarouselHomeView(
              onPageChanged: (index, p1) {
                setState(() {
                  currentIndexPage = index;
                });
              },
            ),
            SizedBox(height: 16.h),
            CustomDotsWidget(currentIndexPage: currentIndexPage),
            Expanded(
              child: GridView(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 1.1,
                ),
                children: [
                  CustomGridViewContainer(
                    image: "assets/images/Send.png",
                    title: "Send money",
                    description: "Take acc to acc",
                  ),
                  CustomGridViewContainer(
                    image: "assets/images/Pay.png",
                    title: "Pay the bill",
                    description: "Lorem ipsum",
                  ),
                  CustomGridViewContainer(
                    image: "assets/images/Send.png",
                    title: "Request",
                    description: "Lorem ipsum",
                  ),
                  CustomGridViewContainer(
                    image: "assets/images/Contact.png",
                    title: "Contact",
                    description: "Lorem ipsum",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
