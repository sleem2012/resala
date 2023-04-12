class TransactionParams {
   // String? orderId;
   String? transactionId;
   String? amount;
   String? currency;
   // String? transactionTime;
   String? status;
   Map<String, dynamic>? queryParameters;

  TransactionParams({
     // this.orderId,
     this.transactionId,
     this.amount,
     this.currency,
     // this.transactionTime,
     this.status,
     this.queryParameters,
  });

  factory TransactionParams.fromJson(Map<String, dynamic> json) {
    return TransactionParams(
      // orderId: json['order_id'] ?? '',
      transactionId: json['id'] ?? '',
      amount: json['amount_cents'] ?? '',
      currency: json['currency'] ?? '',
      // transactionTime: json['transaction_time'] ?? '',
      status: json['success'] ?? '',
      queryParameters: json,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // 'order_id': orderId,
      'id': transactionId,
      'amount_cents': amount,
      'currency': currency,
      // 'transaction_time': transactionTime,
      'success': status,
    };
  }

  // String get orderIdParam => queryParameters?['order_id'] ?? '';
  String get transactionIdParam => queryParameters?['id'] ?? '';
  int get amountParam => int.parse(queryParameters?['amount_cents']) ;
  String get currencyParam => queryParameters?['currency'] ?? '';
  String get statusParam => queryParameters?['success'] ?? '';

  @override
  String toString() {
    return 'TransactionParams{ transactionId: $transactionId, amount: $amount, currency: $currency,  status: $status, queryParameters: $queryParameters}';
  }
}



// https://accept.paymob.com/api/acceptance/?id=95851939&pending=false&amount_cents=500&success=true&is_auth=false&is_capture=false&is_standalone_payment=true&is_voided=false&is_refunded=false&is_3d_secure=true&integration_id=3682800&profile_id=725743&has_parent_transaction=false&order=111133523&created_at=2023-03-31T16%3A43%3A27.580858&currency=EGP&merchant_commission=0&discount_details=%5B%5D&is_void=false&is_refund=false&error_occured=false&refunded_amount_cents=0&captured_amount=0&updated_at=2023-03-31T16%3A43%3A51.090762&is_settled=false&bill_balanced=false&is_bill=false&owner=1244195&data.message=Approved&source_data.type=card&source_data.pan=0008&source_data.sub_type=MasterCard&acq_response_code=00&txn_response_code=APPROVED&hmac=5eee1597b0a76a590cc969684dabd2ff3100bda3d024a9e2bdc4d75332a14d1a947d2aab01006f05e31ee1ba8699b5a44a47cc149a0818be6d9b0ec93155d6ce