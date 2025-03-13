import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  final List images = const [
    "lib/core/assets/images/visa.png",
    "lib/core/assets/images/paypal.png",
    "lib/core/assets/images/applepay.png",
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 62.h,
                  width: 103.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: activeIndex == index ? Colors.green : Colors.black,
                      width: 1.5.w,
                    ),
                  ),

                  child: Image.asset(images[index]),
                ),
              ),
            ),
      ),
    );
  }
}
