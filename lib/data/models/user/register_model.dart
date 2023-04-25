class RegisterModel {
  String? name;
  String? email;
  int? phone;
  String? password;
  String? username;

  RegisterModel({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.username,
  });

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

  RegisterModel copyWith({
    String? name,
    String? email,
    int? phone,
    String? password,
    String? username,
  }) {
    return RegisterModel(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      username: username ?? this.username,
    );
  }

  @override
  bool operator ==(covariant RegisterModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email &&
      other.phone == phone &&
      other.password == password &&
      other.username == username;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      password.hashCode ^
      username.hashCode;
  }
}
