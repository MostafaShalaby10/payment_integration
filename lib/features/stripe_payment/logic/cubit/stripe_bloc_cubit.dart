import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment/core/api_service/api_constants.dart';
import 'package:payment/core/api_service/api_service.dart';
import 'package:payment/core/utils/service_locator.dart';
import 'package:payment/features/stripe_payment/data/models/intent_request_model.dart';
import 'package:payment/features/stripe_payment/data/repos/repo_implemention/payment_intreface.dart';

part 'stripe_bloc_state.dart';

class StripeBlocCubit extends Cubit<StripeBlocState> {
  PaymentIntreface paymentIntreface;
  StripeBlocCubit(this.paymentIntreface) : super(StripeBlocInitial());
  static StripeBlocCubit get(context) => BlocProvider.of(context);
  Future createPaymentIntent() async {
    emit(CreatePaymentIntentLoading());
    var outputModel = await paymentIntreface.createPaymentIntent(
      apiService: getIt<ApiService>(),
      intentRequestModel: IntentRequestModel(amount: 2000, currency: 'USD'),
      userToken: ApiConstants.userToken,
    );
    await paymentIntreface.createPaymentIntentSheet(
      secrertKey: outputModel.clientSecret!,
    );

    await paymentIntreface
        .displayPaymentSheet()
        .then((value) {
          emit(CreatePaymentIntentSuccessfully());
        })
        .catchError((error) {
          emit(CreatePaymentIntentFailed(error.toString()));
        });
  }
}
