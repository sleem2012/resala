class RecycleFormModel {
  String? name;
  String? date;
  String? phone;
  String? address;
  String? region;
  String? street;
  String? floor;
  String? specialMark;

  RecycleFormModel({
    this.name,
    this.date,
    this.phone,
    this.address,
    this.region,
    this.street,
    this.floor,
    this.specialMark,
  });

  RecycleFormModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
    phone = json['phone'];
    address = json['address'];
    region = json['region'];
    street = json['street'];
    floor = json['floor'];
    specialMark = json['special_mark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['date'] = date;
    data['phone'] = phone;
    data['address'] = address;
    data['region'] = region;
    data['street'] = street;
    data['floor'] = floor;
    data['special_mark'] = specialMark;
    return data;
  }

  @override
  String toString() {
    return 'RecycleFormModel(name: $name, date: $date, phone: $phone, address: $address, region: $region, street: $street, floor: $floor, specialMark: $specialMark)';
  }

  @override
  bool operator ==(covariant RecycleFormModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.date == date &&
        other.phone == phone &&
        other.address == address &&
        other.region == region &&
        other.street == street &&
        other.floor == floor &&
        other.specialMark == specialMark;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        date.hashCode ^
        phone.hashCode ^
        address.hashCode ^
        region.hashCode ^
        street.hashCode ^
        floor.hashCode ^
        specialMark.hashCode;
  }

  RecycleFormModel copyWith({
    String? name,
    String? date,
    String? phone,
    String? address,
    String? region,
    String? street,
    String? floor,
    String? specialMark,
  }) {
    return RecycleFormModel(
      name: name ?? this.name,
      date: date ?? this.date,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      region: region ?? this.region,
      street: street ?? this.street,
      floor: floor ?? this.floor,
      specialMark: specialMark ?? this.specialMark,
    );
  }
}
