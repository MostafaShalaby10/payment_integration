import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/widgets/custom_widgets.dart';

class SuccessfullyPayment extends StatelessWidget {
  const SuccessfullyPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context, title: ""),
      body: Padding(
        padding: EdgeInsets.only(
          right: 15.w,
          left: 15.w,
          top: 90.h,
          bottom: 20.h,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            MainSuccessfullyContainer(),
            Positioned(
              right: 0,
              left: 0,
              top: -50,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffD9D9D9),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 30,
                  child: Icon(Icons.check, color: Colors.white, size: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainSuccessfullyContainer extends StatelessWidget {
  const MainSuccessfullyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 40.h),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              customText(
                text: "Thank you!",
                size: 30,
                weight: FontWeight.w500,
                color: Colors.black,
              ),
              SizedBox(height: 10.h),
              customText(
                text: "Your transaction was successful",
                size: 20,
                weight: FontWeight.w400,
                color: Colors.black38,
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Expanded(
                    child: customText(
                      text: "Date",
                      size: 18,
                      weight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  customText(
                    text: "10/04/2001",
                    size: 18,
                    weight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              Row(
                children: [
                  Expanded(
                    child: customText(
                      text: "Time",
                      size: 18,
                      weight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  customText(
                    text: "04:30 PM",
                    size: 18,
                    weight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              Row(
                children: [
                  Expanded(
                    child: customText(
                      text: "To",
                      size: 18,
                      weight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  customText(
                    text: "Shebien El-kom",
                    size: 18,
                    weight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ],
              ),

              Divider(
                height: 60,
                thickness: 1,
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),

              Row(
                children: [
                  Expanded(
                    child: customText(
                      text: "Total",
                      size: 24,
                      weight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  customText(
                    text: r"$50.94",
                    size: 18,
                    weight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 10.w,
                    children: [
                      Image.asset("lib/core/assets/images/master.png"),
                      customText(
                        text: "Master Card\n mastercard *****87",
                        size: 18,
                        weight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                height: 85.h,
                thickness: 1,
                color: Colors.black,
                indent: 0,
                endIndent: 0,
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xff34A853), width: 1),
                ),
                child: customText(
                  text: "Paid",
                  size: 24,
                  weight: FontWeight.w600,
                  color: Color(0xff34A853),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2,
          left: -20,
          child: CircleAvatar(backgroundColor: Colors.white),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2,
          right: -20,
          child: CircleAvatar(backgroundColor: Colors.white),
        ),
      ],
    );
  }
}
