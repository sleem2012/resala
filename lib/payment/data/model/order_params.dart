class OrderPrams {
  String? authToken;
  String? deliveryNeeded;
  String? amountCents;
  String? currency;
  int? merchantOrderId;
  List<Items>? items;
  ShippingData? shippingData;
  ShippingDetails? shippingDetails;

  OrderPrams(
      {this.authToken,
        this.deliveryNeeded,
        this.amountCents,
        this.currency,
        this.merchantOrderId,
        this.items,
        this.shippingData,
        this.shippingDetails});

  OrderPrams.fromJson(Map<String, dynamic> json) {
    authToken = json['auth_token'];
    deliveryNeeded = json['delivery_needed'];
    amountCents = json['amount_cents'];
    currency = json['currency'];
   if(merchantOrderId!=null) merchantOrderId = json['merchant_order_id'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
    shippingData = json['shipping_data'] != null
        ? ShippingData.fromJson(json['shipping_data'])
        : null;
    shippingDetails = json['shipping_details'] != null
        ? ShippingDetails.fromJson(json['shipping_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['auth_token'] = authToken;
    data['delivery_needed'] = deliveryNeeded;
    data['amount_cents'] = amountCents;
    data['currency'] = currency;
    if(merchantOrderId!=null)  data['merchant_order_id'] = merchantOrderId;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    if (shippingData != null) {
      data['shipping_data'] = shippingData!.toJson();
    }
    if (shippingDetails != null) {
      data['shipping_details'] = shippingDetails!.toJson();
    }
    return data;
  }
}

class Items {
  String? name;
  String? amountCents;
  String? description;
  String? quantity;

  Items({this.name, this.amountCents, this.description, this.quantity});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    amountCents = json['amount_cents'];
    description = json['description'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['amount_cents'] = amountCents;
    data['description'] = description;
    data['quantity'] = quantity;
    return data;
  }
}

class ShippingData {
  String? apartment;
  String? email;
  String? floor;
  String? firstName;
  String? street;
  String? building;
  String? phoneNumber;
  String? postalCode;
  String? extraDescription;
  String? city;
  String? country;
  String? lastName;
  String? state;

  ShippingData(
      {this.apartment,
        this.email,
        this.floor,
        this.firstName,
        this.street,
        this.building,
        this.phoneNumber,
        this.postalCode,
        this.extraDescription,
        this.city,
        this.country,
        this.lastName,
        this.state});

  ShippingData.fromJson(Map<String, dynamic> json) {
    apartment = json['apartment'];
    email = json['email'];
    floor = json['floor'];
    firstName = json['first_name'];
    street = json['street'];
    building = json['building'];
    phoneNumber = json['phone_number'];
    postalCode = json['postal_code'];
    extraDescription = json['extra_description'];
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
    data['postal_code'] = postalCode;
    data['extra_description'] = extraDescription;
    data['city'] = city;
    data['country'] = country;
    data['last_name'] = lastName;
    data['state'] = state;
    return data;
  }
}

class ShippingDetails {
  String? notes;
  int? numberOfPackages;
  int? weight;
  String? weightUnit;
  int? length;
  int? width;
  int? height;
  String? contents;

  ShippingDetails(
      {this.notes,
        this.numberOfPackages,
        this.weight,
        this.weightUnit,
        this.length,
        this.width,
        this.height,
        this.contents});

  ShippingDetails.fromJson(Map<String, dynamic> json) {
    notes = json['notes'];
    numberOfPackages = json['number_of_packages'];
    weight = json['weight'];
    weightUnit = json['weight_unit'];
    length = json['length'];
    width = json['width'];
    height = json['height'];
    contents = json['contents'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['notes'] = notes;
    data['number_of_packages'] = numberOfPackages;
    data['weight'] = weight;
    data['weight_unit'] = weightUnit;
    data['length'] = length;
    data['width'] = width;
    data['height'] = height;
    data['contents'] = contents;
    return data;
  }
}
