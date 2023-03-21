class PaymentKeyPrams {
  String? authToken;
  String? amountCents;
  int? expiration;
  String? orderId;
  BillingData? billingData;
  String? currency;
  int? integrationId;
  String? lockOrderWhenPaid;

  PaymentKeyPrams(
      {this.authToken,
        this.amountCents,
        this.expiration,
        this.orderId,
        this.billingData,
        this.currency,
        this.integrationId,
        this.lockOrderWhenPaid});

  PaymentKeyPrams.fromJson(Map<String, dynamic> json) {
    authToken = json['auth_token'];
    amountCents = json['amount_cents'];
    expiration = json['expiration'];
    orderId = json['order_id'];
    billingData = json['billing_data'] != null
        ? BillingData.fromJson(json['billing_data'])
        : null;
    currency = json['currency'];
    integrationId = json['integration_id'];
    lockOrderWhenPaid = json['lock_order_when_paid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['auth_token'] = authToken;
    data['amount_cents'] = amountCents;
    data['expiration'] = expiration;
    data['order_id'] = orderId;
    if (billingData != null) {
      data['billing_data'] = billingData!.toJson();
    }
    data['currency'] = currency;
    data['integration_id'] = integrationId;
    if(lockOrderWhenPaid!=null) data['lock_order_when_paid'] = lockOrderWhenPaid;
    return data;
  }
}

class BillingData {
  String? apartment;
  String? email;
  String? floor;
  String? firstName;
  String? street;
  String? building;
  String? phoneNumber;
  String? shippingMethod;
  String? postalCode;
  String? city;
  String? country;
  String? lastName;
  String? state;

  BillingData(
      {this.apartment,
        this.email,
        this.floor,
        this.firstName,
        this.street,
        this.building,
        this.phoneNumber,
        this.shippingMethod,
        this.postalCode,
        this.city,
        this.country,
        this.lastName,
        this.state});

  BillingData.fromJson(Map<String, dynamic> json) {
    apartment = json['apartment'];
    email = json['email'];
    floor = json['floor'];
    firstName = json['first_name'];
    street = json['street'];
    building = json['building'];
    phoneNumber = json['phone_number'];
    shippingMethod = json['shipping_method'];
    postalCode = json['postal_code'];
    city = json['city'];
    country = json['country'];
    lastName = json['last_name'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['apartment'] = apartment;
    data['email'] = email;
    data['floor'] = floor;
    data['first_name'] = firstName;
    data['street'] = street;
    data['building'] = building;
    data['phone_number'] = phoneNumber;
    data['shipping_method'] = shippingMethod;
    if(postalCode!=null) data['postal_code'] = postalCode;
    data['city'] = city;
    data['country'] = country;
    data['last_name'] = lastName;
    data['state'] = state;
    return data;
  }
}
