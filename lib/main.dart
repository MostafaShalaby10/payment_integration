import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/api_service/api_constants.dart';
import 'package:payment/core/utils/service_locator.dart';
import 'package:payment/features/stripe_payment/view/cart_view.dart';

void main() {
  setup();
    Stripe.publishableKey = ApiConstants.publishableKey;

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
