class RecDonationsModel {
  RecDonationsData? data;
  String? message;

  RecDonationsModel({this.data, this.message});

  RecDonationsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? RecDonationsData.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }
}

class RecDonationsData {
  int? id;
  int? plastic;
  int? metal;
  int? paper;
  int? points;
  int? userId;
  int? donationPointId;
  String? createdAt;
  String? updatedAt;

  RecDonationsData(
      {this.id,
        this.plastic,
        this.metal,
        this.paper,
        this.points,
        this.userId,
        this.donationPointId,
        this.createdAt,
        this.updatedAt});

  RecDonationsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    plastic = json['plastic'];
    metal = json['metal'];
    paper = json['paper'];
    points = json['points'];
    userId = json['user_id'];
    donationPointId = json['donationpoint_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['plastic'] = plastic;
    data['metal'] = metal;
    data['paper'] = paper;
    data['points'] = points;
    data['user_id'] = userId;
    data['donationpoint_id'] = donationPointId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
