class SettingModel {
  Data? data;
  String? message;

  SettingModel({this.data, this.message});

  SettingModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
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

class Data {
  Info? info;
  List<Sliders>? sliders;

  Data({this.info, this.sliders});

  Data.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders!.add(Sliders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (info != null) {
      data['info'] = info!.toJson();
    }
    if (sliders != null) {
      data['sliders'] = sliders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Info {
  String? description;
  String? address;
  String? phone1;
  String? phone2;
  String? facebook;
  String? whats;
  String? logo;
  String? aboutImage;
  String? monthlyImage;
  String? volunteerImage;
  String? mandobImage;
  String? recycleImage;
  String? donationImage;

  Info(
      {this.description,
        this.address,
        this.phone1,
        this.phone2,
        this.facebook,
        this.whats,
        this.logo,
        this.aboutImage,
        this.monthlyImage,
        this.volunteerImage,
        this.mandobImage,
        this.recycleImage,
        this.donationImage});

  Info.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    address = json['address'];
    phone1 = json['phone_1'];
    phone2 = json['phone_2'];
    facebook = json['facebook'];
    whats = json['whats'];
    logo = json['logo'];
    aboutImage = json['about_image'];
    monthlyImage = json['monthly_image'];
    volunteerImage = json['volunteer_image'];
    mandobImage = json['mandob_image'];
    recycleImage = json['recycle_image'];
    donationImage = json['donation_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['address'] = address;
    data['phone_1'] = phone1;
    data['phone_2'] = phone2;
    data['facebook'] = facebook;
    data['whats'] = whats;
    data['logo'] = logo;
    data['about_image'] = aboutImage;
    data['monthly_image'] = monthlyImage;
    data['volunteer_image'] = volunteerImage;
    data['mandob_image'] = mandobImage;
    data['recycle_image'] = recycleImage;
    data['donation_image'] = donationImage;
    return data;
  }
}

class Sliders {
  String? image;

  Sliders({this.image});

  Sliders.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    return data;
  }
}
