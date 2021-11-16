import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_container.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class DetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 50.h,
                  title: "Item Code",
                  text: "100001",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  isShowIcon: true,
                  width: Get.width,
                  height: 50.h,
                  title: "UOM",
                  text: "UNIT",
                ),
              ),
            ],
          ),
          CustomContainer(
            title: "Description",
            width: Get.width,
            height: 50.h,
            text: "SAMSUNG GALAXY NOTE 3",
          ),
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 50.h,
                  title: "Price(RM)",
                  text: "1,800.00",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 50.h,
                  title: "Rate",
                  text: "1.00000",
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                "- - - - - - - - - - Promotion Details - - - - - - - - - -",
                color: AppColors.orange,
                fontSize: 14.sp,
              )
            ],
          ),
          CustomContainer(
            title: "Promotion",
            width: Get.width,
            height: 50.h,
            color: AppColors.orange,
            text: "CRISTMAS",
          ),
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 50.h,
                  title: "Promotion Price(RM)",
                  color: AppColors.orange,
                  text: "1,440.00",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 50.h,
                  title: "Member Price(RM)",
                  color: AppColors.orange,
                  text: "1,260.00",
                ),
              ),
            ],
          ),
          CustomButton(
            onTap: () {},
            cWidth: Get.width,
            cHeight: 45.h,
            title: "PRINT",
          )
        ],
      ),
    );
  }
}
