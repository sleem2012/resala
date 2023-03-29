class MyParticipationModel {
  List<MyParticipationData>? data;
  String? message;

  MyParticipationModel({this.data, this.message});

  MyParticipationModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <MyParticipationData>[];
      json['data'].forEach((v) {
        data!.add(MyParticipationData.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    return data;
  }
}

class MyParticipationData {
  String? title;
  String? desc;
  String? status;
  String? type;
  String? image;
  List<String>? images;
  String? btnTitle='أظهر المزيد';
  Function()? onPressed=(){};
  MyParticipationData(
      {this.title,
        this.desc,
        this.status,
        this.type,
        this.image,
        this.images,
        this.btnTitle,
        this.onPressed



      });

  MyParticipationData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['description'];
    status = json['status'];
    type = json['type'];
    image = json['image'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = desc;
    data['status'] = status;
    data['type'] = type;
    data['image'] = image;
    data['images'] = images;
    return data;
  }
}
