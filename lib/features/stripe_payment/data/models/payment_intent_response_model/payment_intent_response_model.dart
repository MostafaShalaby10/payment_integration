import 'amount_details.dart';
import 'automatic_payment_methods.dart';
import 'metadata.dart';
import 'payment_method_options.dart';

class PaymentIntentResponseModel {
  String? id;
  String? object;
  int? amount;
  int? amountCapturable;
  AmountDetails? amountDetails;
  int? amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  AutomaticPaymentMethods? automaticPaymentMethods;
  dynamic canceledAt;
  dynamic cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  int? created;
  String? currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool? livemode;
  Metadata? metadata;
  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;
  PaymentMethodOptions? paymentMethodOptions;
  List<dynamic>? paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String? status;
  dynamic transferData;
  dynamic transferGroup;

  PaymentIntentResponseModel({
    this.id,
    this.object,
    this.amount,
    this.amountCapturable,
    this.amountDetails,
    this.amountReceived,
    this.application,
    this.applicationFeeAmount,
    this.automaticPaymentMethods,
    this.canceledAt,
    this.cancellationReason,
    this.captureMethod,
    this.clientSecret,
    this.confirmationMethod,
    this.created,
    this.currency,
    this.customer,
    this.description,
    this.invoice,
    this.lastPaymentError,
    this.latestCharge,
    this.livemode,
    this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.source,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.status,
    this.transferData,
    this.transferGroup,
  });

  factory PaymentIntentResponseModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaymentIntentResponseModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      amount: json['amount'] as int?,
      amountCapturable: json['amount_capturable'] as int?,
      // amountDetails:
      //     json['amount_details'] == null
      //         ? null
      //         : AmountDetails.fromIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull(
      //           json['amount_details'] as Map<String, dynamic>,
      //         ),
      amountReceived: json['amount_received'] as int?,
      application: json['application'] as dynamic,
      applicationFeeAmount: json['application_fee_amount'] as dynamic,
      automaticPaymentMethods:
          json['automatic_payment_methods'] == null
              ? null
              : AutomaticPaymentMethods.fromIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull(
                json['automatic_payment_methods'] as Map<String, dynamic>,
              ),
      canceledAt: json['canceled_at'] as dynamic,
      cancellationReason: json['cancellation_reason'] as dynamic,
      captureMethod: json['capture_method'] as String?,
      clientSecret: json['client_secret'] as String?,
      confirmationMethod: json['confirmation_method'] as String?,
      created: json['created'] as int?,
      currency: json['currency'] as String?,
      customer: json['customer'] as dynamic,
      description: json['description'] as dynamic,
      invoice: json['invoice'] as dynamic,
      lastPaymentError: json['last_payment_error'] as dynamic,
      latestCharge: json['latest_charge'] as dynamic,
      livemode: json['livemode'] as bool?,
      // metadata:
      //     json['metadata'] == null
      //         ? null
      //         : Metadata.fromIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull(
      //           json['metadata'] as Map<String, dynamic>,
      //         ),
      nextAction: json['next_action'] as dynamic,
      onBehalfOf: json['on_behalf_of'] as dynamic,
      paymentMethod: json['payment_method'] as dynamic,
      paymentMethodOptions:
          json['payment_method_options'] == null
              ? null
              : PaymentMethodOptions.fromIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull(
                json['payment_method_options'] as Map<String, dynamic>,
              ),
      paymentMethodTypes: json['payment_method_types'] as List<dynamic>?,
      processing: json['processing'] as dynamic,
      receiptEmail: json['receipt_email'] as dynamic,
      review: json['review'] as dynamic,
      setupFutureUsage: json['setup_future_usage'] as dynamic,
      shipping: json['shipping'] as dynamic,
      source: json['source'] as dynamic,
      statementDescriptor: json['statement_descriptor'] as dynamic,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as dynamic,
      status: json['status'] as String?,
      transferData: json['transfer_data'] as dynamic,
      transferGroup: json['transfer_group'] as dynamic,
    );
  }

  Map<String, dynamic>
  toIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull() {
    return {
      'id': id,
      'object': object,
      'amount': amount,
      'amount_capturable': amountCapturable,
      // 'amount_details':
      //     amountDetails
      //         ?.toIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull(),
      'amount_received': amountReceived,
      'application': application,
      'application_fee_amount': applicationFeeAmount,
      'automatic_payment_methods':
          automaticPaymentMethods
              ?.toIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull(),
      'canceled_at': canceledAt,
      'cancellation_reason': cancellationReason,
      'capture_method': captureMethod,
      'client_secret': clientSecret,
      'confirmation_method': confirmationMethod,
      'created': created,
      'currency': currency,
      'customer': customer,
      'description': description,
      'invoice': invoice,
      'last_payment_error': lastPaymentError,
      'latest_charge': latestCharge,
      'livemode': livemode,
      // 'metadata':
      //     metadata
      //         ?.toIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull(),
      'next_action': nextAction,
      'on_behalf_of': onBehalfOf,
      'payment_method': paymentMethod,
      'payment_method_options':
          paymentMethodOptions
              ?.toIdPi3MtwBwLkdIwHu7ix28a3tqPaObjectPaymentIntentAmount2000AmountCapturable0AmountDetailsTipAmountReceived0ApplicationNullApplicationFeeAmountNullAutomaticPaymentMethodsEnabledTrueCanceledAtNullCancellationReasonNullCaptureMethodAutomaticClientSecretPi3MtwBwLkdIwHu7ix28a3tqPaSecretYrKjuKribcBjcG8HVhfZluoGhConfirmationMethodAutomaticCreated1680800504CurrencyUsdCustomerNullDescriptionNullInvoiceNullLastPaymentErrorNullLatestChargeNullLivemodeFalseMetadataNextActionNullOnBehalfOfNullPaymentMethodNullPaymentMethodOptionsCardInstallmentsNullMandateOptionsNullNetworkNullRequestThreeDSecureAutomaticLinkPersistentTokenNullPaymentMethodTypesCardLinkProcessingNullReceiptEmailNullReviewNullSetupFutureUsageNullShippingNullSourceNullStatementDescriptorNullStatementDescriptorSuffixNullStatusRequiresPaymentMethodTransferDataNullTransferGroupNull(),
      'payment_method_types': paymentMethodTypes,
      'processing': processing,
      'receipt_email': receiptEmail,
      'review': review,
      'setup_future_usage': setupFutureUsage,
      'shipping': shipping,
      'source': source,
      'statement_descriptor': statementDescriptor,
      'statement_descriptor_suffix': statementDescriptorSuffix,
      'status': status,
      'transfer_data': transferData,
      'transfer_group': transferGroup,
    };
  }
}
