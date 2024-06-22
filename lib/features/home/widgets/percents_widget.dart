import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentsWidget extends StatelessWidget {
  const PercentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircularPercentIndicator(
          arcType: ArcType.FULL,
          arcBackgroundColor: Colors.transparent,
          radius: 50.0.sp,
          lineWidth: 12.0.w,
          percent: 1.0,
          center: Text(
            "100%",
            style: FontHelper.font18BoldWhite,
          ),
          footer: Text(
            "Bills",
            style: FontHelper.font18BoldWhite,
          ),
          progressColor: Colors.green,
        ),
        CircularPercentIndicator(
          arcType: ArcType.FULL,
          arcBackgroundColor: Colors.transparent,
          radius: 50.0.sp,
          lineWidth: 12.0.w,
          percent: 0.75,
          center: Text(
            "25%",
            style: FontHelper.font18BoldWhite,
          ),
          footer: Text(
            "Internet",
            style: FontHelper.font18BoldWhite,
          ),
          progressColor: Colors.yellow,
        ),
        CircularPercentIndicator(
          arcType: ArcType.FULL,
          arcBackgroundColor: Colors.transparent,
          radius: 50.0.sp,
          lineWidth: 12.0.w,
          percent: 0.5,
          center: Text(
            "50%",
            style: FontHelper.font18BoldWhite,
          ),
          footer: Text(
            "Food",
            style: FontHelper.font18BoldWhite,
          ),
          progressColor: Colors.blue,
        ),
      ],
    );
  }
}
