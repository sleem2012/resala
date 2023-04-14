class StoreMandobModel {
  String? chievment;
  // String? notes;
  String? achievmentType;
  String? dateTime;
  String? address;

  StoreMandobModel({
    this.chievment,
    // this.notes,
    this.achievmentType,
    this.dateTime,
    this.address,
  });

  StoreMandobModel.fromJson(Map<String, dynamic> json) {
    chievment = json['chievment'];
    // notes = json['notes'];
    achievmentType = json['achievment_type'];
    dateTime = json['date_time'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['chievment'] = chievment;
    // data['notes'] = notes;
    data['achievment_type'] = achievmentType;
    data['date_time'] = dateTime;
    data['address'] = address;
    return data;
  }

  StoreMandobModel copyWith({
    String? chievment,
    String? notes,
    String? achievmentType,
    String? dateTime,
    String? address,
  }) {
    return StoreMandobModel(
      chievment: chievment ?? this.chievment,
      // notes: notes ?? this.notes,
      achievmentType: achievmentType ?? this.achievmentType,
      dateTime: dateTime ?? this.dateTime,
      address: address ?? this.address,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreMandobModel &&
          runtimeType == other.runtimeType &&
          chievment == other.chievment &&
          // notes == other.notes &&
          achievmentType == other.achievmentType &&
          dateTime == other.dateTime &&
          address == other.address;

  @override
  int get hashCode =>
      chievment.hashCode ^
      // notes.hashCode ^
      achievmentType.hashCode ^
      dateTime.hashCode ^
      address.hashCode;
}
