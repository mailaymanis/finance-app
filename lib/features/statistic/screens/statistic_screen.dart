import 'package:finance_app/features/statistic/widgets/custom_grid_container.dart';
import 'package:finance_app/features/statistic/widgets/custom_statistic_chart.dart';
import 'package:finance_app/features/statistic/widgets/custom_statistic_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});
  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60.h),
          const CustomStatisticRow(),
          SizedBox(height: 24.h),
          BarChartSample2(),
          Expanded(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 24.w, right: 24.w),
              child: GridView(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 1.0,
                ),
                children: [
                  CustomGridContainer(
                    image: "assets/images/income.png",
                    title: "15000 EG",
                    description: "Income",
                  ),
                  CustomGridContainer(
                    image: "assets/images/outcome.png",
                    title: "35000 EG",
                    description: "Outcome",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
