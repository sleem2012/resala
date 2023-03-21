class PaymentAuthResponse {
  String token;
  PaymentAuthResponse({
    required this.token,
  });
  factory PaymentAuthResponse.fromJson(Map<String, dynamic> json) {
    return PaymentAuthResponse(
      token: json['token'],
    );
  }
  Map<String, dynamic> toJson() => {
    "token": token,
  };
}
