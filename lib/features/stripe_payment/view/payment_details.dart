import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/widgets/custom_widgets.dart';
import 'package:payment/features/stripe_payment/view/custom_list_view.dart';
import 'package:payment/features/stripe_payment/view/successfully_payment.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "My Cart"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.h,
            children: [CustomListView(), CreditCardInformation()],
          ),
        ),
      ),
    );
  }
}

class CreditCardInformation extends StatefulWidget {
  const CreditCardInformation({super.key});

  @override
  State<CreditCardInformation> createState() => _CreditCardInformationState();
}

class _CreditCardInformationState extends State<CreditCardInformation> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool showBackView = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          formKey: formKey,
          onCreditCardModelChange: (CreditCardModel data) {
            setState(() {
              cardNumber = data.cardNumber;
              expiryDate = data.expiryDate;
              cardHolderName = data.cardHolderName;
              cvvCode = data.cvvCode;
              showBackView = data.isCvvFocused;
            });
          },
        ),
        SizedBox(
          width: double.infinity,
          child: customButton(
            text: "Pay",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuccessfullyPayment(),
                  ),
                );
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
            color: Color(0xff34A853),
          ),
        ),
      ],
    );
  }
}
