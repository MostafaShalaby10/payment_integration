import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/features/stripe_payment/view/cart_view.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder:
          (_, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const CartView(),
          ),
    );
  }
}
