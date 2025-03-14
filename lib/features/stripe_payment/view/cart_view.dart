import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/widgets/custom_widgets.dart';
import 'package:payment/features/stripe_payment/data/repos/repo_interfaces/stripe_implemention.dart';
import 'package:payment/features/stripe_payment/logic/cubit/stripe_bloc_cubit.dart';
import 'package:payment/features/stripe_payment/view/successfully_payment.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StripeBlocCubit(StripeImplemention()),
      child: BlocConsumer<StripeBlocCubit, StripeBlocState>(
        listener: (context, state) {
            if(state is CreatePaymentIntentSuccessfully){
              log("Succssfully Payment");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SuccessfullyPayment(),
                ),
              );
            }else if(state is CreatePaymentIntentFailed){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
              log( state.error);
            }

        },
        builder: (context, state) {
          return Scaffold(
            appBar: customAppBar(context, title: "My Cart"),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 7.h,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset("lib/core/assets/images/cart.png"),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: customText(
                          text: "Order Subtotal",
                          size: 18,
                          weight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      customText(
                        text: "\$ 100",
                        size: 18,
                        weight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: customText(
                          text: "Disccount",
                          size: 18,
                          weight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      customText(
                        text: "\$ 10",
                        size: 18,
                        weight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: customText(
                          text: "Shipping",
                          size: 18,
                          weight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      customText(
                        text: "\$ 90",
                        size: 18,
                        weight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),

                  Divider(thickness: 1, color: Colors.black),
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
                        text: "\$ 190",
                        size: 24,
                        weight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: customButton(
                      text: "Compelete Payment",
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => PaymentDetails(),
                        //   ),
                        // );.
                        StripeBlocCubit.get(context).createPaymentIntent();
                      },
                      color: Color(0xff34A853),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
