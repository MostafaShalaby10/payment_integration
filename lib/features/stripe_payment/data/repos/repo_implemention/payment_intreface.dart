import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:payment/core/api_service/api_service.dart';
import 'package:payment/features/stripe_payment/data/models/intent_request_model.dart';
import 'package:payment/features/stripe_payment/data/models/payment_intent_response_model/payment_intent_response_model.dart';

abstract class PaymentIntreface {
  Future<PaymentIntentResponseModel> createPaymentIntent({
    required ApiService apiService,
    required IntentRequestModel intentRequestModel,
    required String userToken,
  });


  Future<void> createPaymentIntentSheet({required String secrertKey});

  Future displayPaymentSheet();

}

