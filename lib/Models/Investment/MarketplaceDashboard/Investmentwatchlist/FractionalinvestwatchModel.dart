class FractionalInvestwatchlistModel {
  List<Data>? data;

  FractionalInvestwatchlistModel({this.data});

  FractionalInvestwatchlistModel.fromJson(Map<String, dynamic> json) {
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
  String? propertyName;
  String? propertyAddress;
  String? propertyGrade;
  String? assetType;
  String? fractionalRealEstatePlatform;
  String? expectedSellingPrice;
  int? fundCategory;

  Data(
      {this.propertyName,
      this.propertyAddress,
      this.propertyGrade,
      this.assetType,
      this.fractionalRealEstatePlatform,
      this.expectedSellingPrice,
      this.fundCategory});

  Data.fromJson(Map<String, dynamic> json) {
    propertyName = json['property_name'];
    propertyAddress = json['property_address'];
    propertyGrade = json['property_grade'];
    assetType = json['asset_type'];
    fractionalRealEstatePlatform = json['fractional_real_estate_platform'];
    expectedSellingPrice = json['expected_selling_price'];
    fundCategory = json['fund_category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['property_name'] = this.propertyName;
    data['property_address'] = this.propertyAddress;
    data['property_grade'] = this.propertyGrade;
    data['asset_type'] = this.assetType;
    data['fractional_real_estate_platform'] = this.fractionalRealEstatePlatform;
    data['expected_selling_price'] = this.expectedSellingPrice;
    data['fund_category'] = this.fundCategory;
    return data;
  }
}
