import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_container.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class PromotionsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: Get.width,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.orange),
                borderRadius: BorderRadius.circular(12.r)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    "All OutLet",
                    color: AppColors.orange,
                    fontSize: 18.sp,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomContainer(
                          width: Get.width,
                          height: 50.h,
                          title: "Promotion Code",
                          color: AppColors.orange,
                          text: "CHIRTSMAS",
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: CustomContainer(
                          width: Get.width,
                          title: "Priority",
                          height: 50.h,
                          color: AppColors.orange,
                          text: "0",
                        ),
                      ),
                    ],
                  ),
                  CustomContainer(
                    width: Get.width,
                    height: 50.h,
                    color: AppColors.orange,
                    title: "Promotion Description",
                    text: "CHIRTSMAS",
                  ),
                  CustomContainer(
                    width: Get.width,
                    height: 50.h,
                    color: AppColors.orange,
                    title: "From Date",
                    text: DateTime.now().toString(),
                  ),
                  CustomContainer(
                    width: Get.width,
                    height: 50.h,
                    color: AppColors.orange,
                    title: "To Date",
                    text: DateTime.now().toString(),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomContainer(
                          width: Get.width,
                          height: 50.h,
                          title: "Promotion Price(RM)",
                          color: AppColors.orange,
                          text: "1,800.00",
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: CustomContainer(
                          width: Get.width,
                          title: "Discount",
                          height: 50.h,
                          color: AppColors.orange,
                          text: "20%",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomContainer(
                          width: Get.width,
                          height: 50.h,
                          title: "Member Price(RM)",
                          color: AppColors.orange,
                          text: "1,800.00",
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: CustomContainer(
                          width: Get.width,
                          title: "Member Discount",
                          height: 50.h,
                          color: AppColors.orange,
                          text: "30%",
                        ),
                      ),
                    ],
                  ),
                  CustomButton(
                    cWidth: Get.width,
                    cHeight: 50.h,
                    title: "PRINT",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
