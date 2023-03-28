class CommonDataModel {
  List<CommonData>? data;
  String? message;

  CommonDataModel({this.data, this.message});

  CommonDataModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CommonData>[];
      json['data'].forEach((v) {
        data!.add(CommonData.fromJson(v));
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

class CommonData {
  int? id;
  String? title;
  String? description;
  String? image;
  int? totalCost;
  int? reamainingCost;
  int? sort;
  String? createdAt;

  CommonData(
      {this.id,
        this.title,
        this.description,
        this.image,
        this.totalCost,
        this.reamainingCost,
        this.sort,
        this.createdAt});

  CommonData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    totalCost = json['total_cost'];
    reamainingCost = json['reamaining_cost'];
    sort = json['sort'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['image'] = image;
    data['total_cost'] = totalCost;
    data['reamaining_cost'] = reamainingCost;
    data['sort'] = sort;
    data['created_at'] = createdAt;
    return data;
  }
}
