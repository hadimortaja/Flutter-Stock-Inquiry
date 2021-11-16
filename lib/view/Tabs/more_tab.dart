import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/custom_container.dart';

class MoreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomContainer(
            width: Get.width,
            height: 55.h,
            title: "Status",
            text: "Active",
            textColor: AppColors.green,
          ),
          CustomContainer(
            width: Get.width,
            height: 55.h,
            title: "BarCode",
            text: "8001",
          ),
          CustomContainer(
            width: Get.width,
            height: 55.h,
            title: "Desc2",
            text: "--",
          ),
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "Item Group",
                  text: "SAMSUNG",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "Item Type",
                  text: "HANDPHONE",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "Supply Tax Code",
                  text: "--",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "Purchase Tax Code",
                  text: "-1.00",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "Weight",
                  text: "--",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "WeightUOM",
                  text: "--",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "Volume",
                  text: "--",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "VolumeUOM",
                  text: "--",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "Shelf",
                  text: "--",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "Normal Level",
                  text: "--",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "ReOrder Level",
                  text: "20.000000",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: CustomContainer(
                  width: Get.width,
                  height: 55.h,
                  title: "ReOrder Quantity",
                  text: "10.00000",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
