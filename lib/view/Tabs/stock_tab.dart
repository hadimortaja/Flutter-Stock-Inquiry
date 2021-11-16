import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/custom_container.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class StockTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomContainer(
            width: Get.width,
            height: 50.h,
            title: "Description",
            text: "SAMSUNG GALAXY NOTE 3",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                "- - - - - - - - - - Stock Balance Details - - - - - - - - - -",
                color: AppColors.blue,
                fontSize: 14.sp,
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          StockItem(
            title: "HQ",
            Ctitle1: "Batch No.",
            text1: "--",
            Ctitle2: "Balance Quantity",
            text2: "576.00000 UNIT",
          ),
          StockItem(
            title: "JB",
            Ctitle1: "Batch No.",
            text1: "--",
            Ctitle2: "Balance Quantity",
            text2: "59.00000 UNIT",
          ),
          StockItem(
            title: "KL",
            Ctitle1: "Batch No.",
            text1: "--",
            Ctitle2: "Balance Quantity",
            text2: "297.00000 UNIT",
          ),
          StockItem(
            title: "TRANSIT",
            Ctitle1: "Batch No.",
            text1: "--",
            Ctitle2: "Balance Quantity",
            text2: "0.00000 UNIT",
          ),
        ],
      ),
    );
  }
}

class StockItem extends StatelessWidget {
  final String? title;
  final String? Ctitle1;
  final String? Ctitle2;

  final String? text1;
  final String? text2;

  StockItem({this.title, this.text1, this.text2, this.Ctitle2, this.Ctitle1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          // height: 100.h,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.blue),
              borderRadius: BorderRadius.circular(12.r)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title ?? "",
                  color: AppColors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomContainer(
                        title: Ctitle1 ?? "",
                        width: Get.width,
                        height: 50.h,
                        color: AppColors.blue,
                        text: text1 ?? "",
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: CustomContainer(
                        title: Ctitle2 ?? "",
                        width: Get.width,
                        height: 50.h,
                        color: AppColors.blue,
                        text: text2 ?? "",
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
