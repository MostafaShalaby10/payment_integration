part of 'stripe_bloc_cubit.dart';

@immutable
sealed class StripeBlocState {}

final class StripeBlocInitial extends StripeBlocState {}



final class CreatePaymentIntentLoading extends StripeBlocState {}
final class CreatePaymentIntentSuccessfully extends StripeBlocState {}
final class CreatePaymentIntentFailed extends StripeBlocState {
  final String error;
  CreatePaymentIntentFailed(this.error);
}
