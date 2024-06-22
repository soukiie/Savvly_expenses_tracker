import 'package:expenses_tracker/core/helpers/spacing.dart';
import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpenseTileWidget extends StatelessWidget {
  const ExpenseTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 41, 39, 78),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Elctricity',
                      style: FontHelper.font18BoldWhite,
                    ),
                    verticalSpace(10),
                    Text(
                      '2 June 2024',
                      style: FontHelper.font13GreyW300,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    '-200 EGP',
                    style: FontHelper.font18BoldWhite,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              height: double.infinity,
              width: 20.w,
            ),
          ),
        ],
      ),
    );
  }
}
