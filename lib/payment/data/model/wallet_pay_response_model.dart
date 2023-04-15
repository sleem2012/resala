class WalletResponse {
  String redirectUrl;
  WalletResponse({
    required this.redirectUrl,
  });

  factory WalletResponse.fromJson(Map<String, dynamic> json) {
    return WalletResponse(
      redirectUrl: json['redirection_url']??json['iframe_redirection_url'],
    );
  }
  Map<String, dynamic> toJson() => {
    "iframe_redirection_url": redirectUrl,
  };
}
