import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/api_service/api_service.dart';
import 'package:payment/features/stripe_payment/data/models/intent_request_model.dart';
import 'package:payment/features/stripe_payment/data/models/payment_intent_response_model/payment_intent_response_model.dart';
import 'package:payment/features/stripe_payment/data/repos/repo_implemention/payment_intreface.dart';

class StripeImplemention implements PaymentIntreface {
  @override
  Future<PaymentIntentResponseModel> createPaymentIntent({
    required ApiService apiService,
    required IntentRequestModel intentRequestModel,
    required String userToken,
  }) async {
   var response =  await apiService.createPaymentIntentPostMethod(
      data: intentRequestModel.toJson(),
      userToken: userToken,
    );

    var paymentIntentResponseModel = PaymentIntentResponseModel.fromJson( response.data);
    return paymentIntentResponseModel;
  }

  @override
  Future createPaymentIntentSheet({required String secrertKey}) async {
     return  Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Mostafa Shalaby',
        paymentIntentClientSecret: secrertKey,
      ),
    );
  }
  
  @override
  Future displayPaymentSheet() {
    return Stripe.instance.presentPaymentSheet();
  }
  
}
