import 'package:dio/dio.dart';
import 'package:payment/core/api_service/api_service.dart';
import 'package:payment/features/stripe_payment/data/models/intent_request_model.dart';
import 'package:payment/features/stripe_payment/data/repos/repo_implemention/payment_intreface.dart';

class StripeImplemention implements PaymentIntreface {
  @override
  Future<Response> createPaymentIntent(
    {required ApiService apiService,
   required IntentRequestModel intentRequestModel,
   required String userToken}
  ) {
    return apiService.createPaymentIntentPostMethod(
      data: intentRequestModel.toJson(),
      userToken: userToken,
    );
  }
}
