class UserModel {
  User? user;
  String? token;

  UserModel({this.user, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? phone;
  String? username;
  String? email;
  String? emailVerifiedAt;
  String? createdBy;
  String? createdAt;
  String? updatedAt;
  int? monthlyDonationId;
  int? volunteerId;
  int? recycleId;

  User(
      {this.id,
        this.name,
        this.phone,
        this.username,
        this.email,
        this.emailVerifiedAt,
        this.createdBy,
        this.createdAt,
        this.updatedAt,
        this.monthlyDonationId,
        this.volunteerId,
        this.recycleId});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    username = json['username'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    monthlyDonationId = json['monthly_donation_id'];
    volunteerId = json['volunteer_id'];
    recycleId = json['recycle_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['username'] = username;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['created_by'] = createdBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['monthly_donation_id'] = monthlyDonationId;
    data['volunteer_id'] = volunteerId;
    data['recycle_id'] = recycleId;
    return data;
  }
}
