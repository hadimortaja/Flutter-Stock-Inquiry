import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/view/Tabs/details_tab.dart';
import 'package:stock_inquiry/view/Tabs/image_tab.dart';
import 'package:stock_inquiry/view/Tabs/more_tab.dart';
import 'package:stock_inquiry/view/Tabs/price_tab.dart';
import 'package:stock_inquiry/view/Tabs/promotions_tab.dart';
import 'package:stock_inquiry/view/Tabs/sales_tab.dart';
import 'package:stock_inquiry/view/Tabs/stock_tab.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isShowDialog = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primaryColor,
          title: CustomText(
            "Stock Inquiry: HQ",
            color: AppColors.whiteColor,
          ),
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                "Enter KeyWord Here:",
                color: AppColors.primaryColor,
                fontSize: 14.sp,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    width: Get.width,
                    height: 30.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  )),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomButton(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: CustomText(
                                'Choose Item',
                              ),
                              content: setupAlertDialoadContainer(() {
                                Get.back();
                                setState(() {
                                  isShowDialog = true;
                                });
                              }),
                            );
                          });
                    },
                    cWidth: 100.w,
                    cHeight: 30.h,
                    title: "SCAN",
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isShowDialog,
              child: Material(
                color: AppColors.primaryColor,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: AppColors.whiteColor,
                  tabs: [
                    Tab(
                      text: "DETAILS",
                    ),
                    Tab(
                      text: "PRICE",
                    ),
                    Tab(
                      text: "MORE",
                    ),
                    Tab(
                      text: "IMAGE",
                    ),
                    Tab(
                      text: "STOCK BALANCE",
                    ),
                    Tab(
                      text: "PROMOTIONS",
                    ),
                    Tab(
                      text: "SALES ANALYSIS",
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isShowDialog,
              child: Expanded(
                child: Container(
                  // width: Get.width,
                  // height: 500.h,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        DetailsTab(),
                        PriceTab(),
                        MoreTab(),
                        ImageTab(),
                        StockTab(),
                        PromotionsTab(),
                        SalesTab(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget setupAlertDialoadContainer(Function() onTap) {
  return Container(
    // height: 300.0, // Change as per your requirement
    width: 300.0.w, // Change as per your requirement
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(
                    "Code:",
                    fontSize: 14.sp,
                    color: AppColors.black,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    "100001",
                    fontSize: 14.sp,
                    color: AppColors.primaryColor,
                  ),
                  Spacer(),
                  Text(
                    "CTN",
                    style: TextStyle(
                        backgroundColor: AppColors.primaryColor,
                        color: AppColors.whiteColor),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    "SAMSUNG GALAXY NOTE 3",
                    fontSize: 16.sp,
                    color: AppColors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  CustomText(
                    "Barcode:",
                    fontSize: 14.sp,
                    color: AppColors.black,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    "80011",
                    fontSize: 14.sp,
                    color: AppColors.black,
                  ),
                  Spacer(),
                  CustomText(
                    "Rate:",
                    fontSize: 14.sp,
                    color: AppColors.black,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CustomText(
                    "24.00",
                    fontSize: 14.sp,
                    color: AppColors.black,
                  ),
                ],
              ),
              Divider(),
            ],
          ),
        );
      },
    ),
  );
}
