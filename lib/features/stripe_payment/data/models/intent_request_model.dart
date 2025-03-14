class IntentRequestModel {
  int amount;
  String currency;
  IntentRequestModel({required this.amount, required this.currency});

  Map<String, dynamic> toJson() {
    return {'amount': amount, 'currency': currency};
  }
}
