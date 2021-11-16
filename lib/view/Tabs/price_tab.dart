import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/widgets/custom_container.dart';

class PriceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomContainer(
                width: Get.width,
                height: 55.h,
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
                height: 55.h,
                title: "Price2(RM)",
                text: "1,800.00",
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
                title: "Min. Selling Price(RM)",
                text: "1,600.00",
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: CustomContainer(
                width: Get.width,
                height: 55.h,
                title: "Max. Selling Price(RM)",
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
                title: "Min. Purchase Price(RM)",
                text: "-1.00",
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: CustomContainer(
                width: Get.width,
                height: 55.h,
                title: "Max. Purchase Price(RM)",
                text: "-1.00",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
