class TopPicksModel {
  List<Data>? data;

  TopPicksModel({this.data});

  TopPicksModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? productName;
  String? categoryName;
  int? topPick;
  String? propertyImage;
  String? companyLogo;
  String? fileName;

  Data(
      {this.id,
      this.productName,
      this.categoryName,
      this.topPick,
      this.propertyImage,
      this.companyLogo,
      this.fileName});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    categoryName = json['category_name'];
    topPick = json['top_pick'];
    propertyImage = json['property_image'];
    companyLogo = json['company_logo'];
    fileName = json['file_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_name'] = this.productName;
    data['category_name'] = this.categoryName;
    data['top_pick'] = this.topPick;
    data['property_image'] = this.propertyImage;
    data['company_logo'] = this.companyLogo;
    data['file_name'] = this.fileName;
    return data;
  }
}
