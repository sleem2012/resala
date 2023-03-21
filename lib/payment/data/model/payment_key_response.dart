class PaymentKeyResponse {
  String token;
  PaymentKeyResponse({
    required this.token,
  });

  factory PaymentKeyResponse.fromJson(Map<String, dynamic> json) {
    return PaymentKeyResponse(
      token: json['token'],
    );
  }
  Map<String, dynamic> toJson() => {
    "token": token,
  };
}
