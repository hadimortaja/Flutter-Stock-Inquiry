import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class CustomContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final String? title;
  final String? text;
  final Color? textColor;
  final bool? isShowIcon;
  // final TextEditingController? controller;

  final Color? color;
  CustomContainer(
      {this.width,
      this.height,
      this.title,
      this.text,
      this.color,
      this.textColor,
      // this.controller,
      this.isShowIcon = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height ?? 30.h,
          width: width ?? 100.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: color ?? AppColors.primaryColor)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, left: 5.w),
                    child: CustomText(
                      title,
                      color: color ?? AppColors.primaryColor,
                      fontSize: 12.sp,
                    ),
                  ),
                  isShowIcon == true ? Spacer() : SizedBox(),
                  isShowIcon == true
                      ? Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.primaryColor,
                        )
                      : SizedBox()
                ],
              ),
              Expanded(
                  child: TextFormField(
                // controller:controller??TextEditingController.text.toString() ,
                textAlign: TextAlign.center,
                initialValue: text ?? "",
                style: TextStyle(
                    color: textColor ?? AppColors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                enableInteractiveSelection: false,
                focusNode: AlwaysDisabledFocusNode(),
              ))
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}

class CustomContainer2 extends StatelessWidget {
  final double? width;
  final double? height;
  final String? title;
  final String? text;
  final Color? textColor;
  final bool? isShowIcon;
  final TextEditingController? controller;

  final Color? color;
  CustomContainer2(
      {this.width,
      this.height,
      this.title,
      this.text,
      this.color,
      this.textColor,
      this.controller,
      this.isShowIcon = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height ?? 30.h,
          width: width ?? 100.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: color ?? AppColors.primaryColor)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, left: 5.w),
                    child: CustomText(
                      title,
                      color: color ?? AppColors.primaryColor,
                      fontSize: 12.sp,
                    ),
                  ),
                  isShowIcon == true ? Spacer() : SizedBox(),
                  isShowIcon == true
                      ? Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.primaryColor,
                        )
                      : SizedBox()
                ],
              ),
              Expanded(
                  child: TextFormField(
                controller: controller,
                textAlign: TextAlign.center,
                initialValue: text ?? "",
                style: TextStyle(
                    color: textColor ?? AppColors.black, fontSize: 18.sp),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                enableInteractiveSelection: false,
                focusNode: AlwaysDisabledFocusNode(),
              ))
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class AlwaysEnabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => true;
}
