import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/view/home_screen.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_container.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class SalesTab extends StatelessWidget {
  DateTime selectedDate = DateTime.now();
  TextEditingController fromDate = TextEditingController();
  TextEditingController toDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: CustomText(
                            'Select an analysis',
                          ),
                          content: AlertDialoadContainer2(() {}),
                        );
                      });
                },
                child: CustomContainer(
                  width: 250.w,
                  height: 50.h,
                  title: "Analysis",
                  isShowIcon: true,
                  text: "Price Change Analysis",
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: CustomText(
                              'Select a frequency',
                            ),
                            content: AlertDialoadContainer(() {}),
                          );
                        });
                  },
                  child: CustomContainer(
                    width: 200.w,
                    height: 50.h,
                    title: "Frequency",
                    isShowIcon: true,
                    text: "Daily",
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //_selectDate(context, fromDate);
                  },
                  child: CustomContainer2(
                    // controller: fromDate,
                    width: Get.width,
                    height: 50.h,
                    title: "From",
                    isShowIcon: true,
                    text: "ttt",
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //  _selectDate(context, toDate);
                  },
                  child: CustomContainer2(
                    // controller: toDate,
                    width: 200.w,
                    height: 50.h,
                    title: "To",
                    isShowIcon: true,
                    text: "",
                  ),
                ),
              ),
            ],
          ),
          Row(children: [
            Expanded(
              child: CustomButton(
                title: "INQUIRY",
                onTap: () {},
                cWidth: Get.width,
                cHeight: 50.h,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: CustomButton(
                title: "FULL SCREEN",
                onTap: () {
                  SystemChrome.setEnabledSystemUIOverlays(
                      SystemUiOverlay.values);
                },
                cWidth: Get.width,
                cHeight: 50.h,
              ),
            ),
          ]),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: Get.width,
            height: 320.h,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(12.r)),
            child: Center(
              child: CustomText(
                "No chart data available",
                color: AppColors.orange,
                fontSize: 12.sp,
              ),
            ),
          )
        ],
      ),
    );
  }

  // _selectDate(BuildContext context, TextEditingController text) async {
  //   DateTime? newSelectedDate = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate != null ? selectedDate : DateTime.now(),
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2040),

  //     // builder: (BuildContext context, Widget child) {
  //     //   return Theme(
  //     //     data: ThemeData.dark().copyWith(
  //     //       colorScheme: ColorScheme.dark(
  //     //         primary: AppColors.primaryColor,
  //     //         onPrimary: Colors.white,
  //     //         surface: Colors.white,
  //     //         onSurface: AppColors.primaryColor,
  //     //       ),
  //     //       dialogBackgroundColor: Colors.white,
  //     //     ),
  //     //     child: child,
  //     //   );
  //   );

  //   if (newSelectedDate != null) {
  //     selectedDate = newSelectedDate;
  //     text
  //       ..text = "${selectedDate.toLocal()}".split(' ')[0]
  //       ..selection = TextSelection.fromPosition(TextPosition(
  //           offset: text.text.length, affinity: TextAffinity.upstream));
  //   }
  // }
}

Widget AlertDialoadContainer(Function() onTap) {
  return Container(
    // height: 300.0, // Change as per your requirement
    width: 300.0.w, // Change as per your requirement
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "Daily",
                fontSize: 20.sp,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                "Monthly",
                fontSize: 20.sp,
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget AlertDialoadContainer2(Function() onTap) {
  return Container(
    // height: 300.0, // Change as per your requirement
    width: 300.0.w, // Change as per your requirement
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "Price Change Analysis",
                fontSize: 20.sp,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                "Sales Volume Analysis",
                fontSize: 20.sp,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                "Sales Quantity Analysis",
                fontSize: 20.sp,
              ),
            ],
          ),
        );
      },
    ),
  );
}
