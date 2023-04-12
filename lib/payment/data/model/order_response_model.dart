class OrderResponse {
  int id;
  int amountCents;
  OrderResponse({
    required this.id,
    required this.amountCents,
  });
  factory OrderResponse.fromJson(Map<String, dynamic> json) {
    return OrderResponse(
      id: json['id'],
      amountCents: json['amount_cents'],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "amount_cents": amountCents,
  };
}
