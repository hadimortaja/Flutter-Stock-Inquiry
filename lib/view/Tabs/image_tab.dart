import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class ImageTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          // height: 500.h,
          decoration: BoxDecoration(
              border: Border.all(width: 2.w, color: AppColors.primaryColor),
              borderRadius: BorderRadius.circular(12.r)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      "Image",
                      color: AppColors.primaryColor,
                      fontSize: 14.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: Get.width,
                  height: 400.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image.png"),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomText(
                  "*Click On The Image to Enlarge",
                  color: AppColors.primaryColor,
                  fontSize: 14.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
