class OthersInvestboughtModel {
  List<Data>? data;

  OthersInvestboughtModel({this.data});

  OthersInvestboughtModel.fromJson(Map<String, dynamic> json) {
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
  String? productCategory;
  String? securityName;
  String? instrumentType;
  String? instrumentIssuer;
  String? creditRating;
  int? expectedSalePricePerUnit;
  int? fundCategory;

  Data(
      {this.productCategory,
      this.securityName,
      this.instrumentType,
      this.instrumentIssuer,
      this.creditRating,
      this.expectedSalePricePerUnit,
      this.fundCategory});

  Data.fromJson(Map<String, dynamic> json) {
    productCategory = json['product_category'];
    securityName = json['security_name'];
    instrumentType = json['instrument_type'];
    instrumentIssuer = json['instrument_issuer'];
    creditRating = json['credit_rating'];
    expectedSalePricePerUnit = json['expected_sale_price_per_unit'];
    fundCategory = json['fund_category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_category'] = this.productCategory;
    data['security_name'] = this.securityName;
    data['instrument_type'] = this.instrumentType;
    data['instrument_issuer'] = this.instrumentIssuer;
    data['credit_rating'] = this.creditRating;
    data['expected_sale_price_per_unit'] = this.expectedSalePricePerUnit;
    data['fund_category'] = this.fundCategory;
    return data;
  }
}
