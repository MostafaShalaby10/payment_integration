import 'package:dio/dio.dart';
import 'package:payment/core/api_service/api_service.dart';
import 'package:payment/features/stripe_payment/data/models/intent_request_model.dart';

abstract class PaymentIntreface {

  Future<Response> createPaymentIntent({required ApiService  apiService,required IntentRequestModel intentRequestModel,required String userToken});
}