import 'package:expenses_tracker/core/helpers/spacing.dart';
import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 15, 17, 31),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Your Balance',
                style: FontHelper.font18BoldWhite,
              ),
              verticalSpace(5),
              Text(
                '2000 EGP',
                style: FontHelper.font28SemiBoldWhite,
              ),
            ],
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.cyan,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
