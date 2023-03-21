class OrderResponse {
  int id;
  OrderResponse({
    required this.id,
  });
  factory OrderResponse.fromJson(Map<String, dynamic> json) {
    return OrderResponse(
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}
