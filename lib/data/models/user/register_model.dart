class RegisterModel {
  String? name;
  String? email;
  int? phone;
  int? password;
  String? username;

  RegisterModel(
      {this.name, this.email, this.phone, this.password, this.username});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['password'] = password;
    data['username'] = username;
    return data;
  }
}
