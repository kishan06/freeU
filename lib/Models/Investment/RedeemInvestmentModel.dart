class RedeemInvestmentModel {
  Data? data;

  RedeemInvestmentModel({this.data});

  RedeemInvestmentModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  ReedemedInvestment? reedemedInvestment;

  Data({this.reedemedInvestment});

  Data.fromJson(Map<String, dynamic> json) {
    reedemedInvestment = json['reedemedInvestment'] != null
        ? new ReedemedInvestment.fromJson(json['reedemedInvestment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.reedemedInvestment != null) {
      data['reedemedInvestment'] = this.reedemedInvestment!.toJson();
    }
    return data;
  }
}

class ReedemedInvestment {
  String? totalInvestment;
  List<ProductDetails>? productDetails;
  String? totalInvestmentInInt;

  ReedemedInvestment(
      {this.totalInvestment, this.productDetails, this.totalInvestmentInInt});

  ReedemedInvestment.fromJson(Map<String, dynamic> json) {
    totalInvestment = json['totalInvestment'];
    if (json['productDetails'] != null) {
      productDetails = <ProductDetails>[];
      json['productDetails'].forEach((v) {
        productDetails!.add(new ProductDetails.fromJson(v));
      });
    }
    totalInvestmentInInt = json['totalInvestmentInInt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalInvestment'] = this.totalInvestment;
    if (this.productDetails != null) {
      data['productDetails'] =
          this.productDetails!.map((v) => v.toJson()).toList();
    }
    data['totalInvestmentInInt'] = this.totalInvestmentInInt;
    return data;
  }
}

class ProductDetails {
  String? companyLogo;
  String? customId;
  String? productName;
  String? categories;
  String? routeId;
  String? totalInvestmentAmount;
  String? amount;

  ProductDetails(
      {this.companyLogo,
      this.customId,
      this.productName,
      this.categories,
      this.routeId,
      this.totalInvestmentAmount,
      this.amount});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    companyLogo = json['company_logo'];
    customId = json['custom_id'];
    productName = json['product_name'];
    categories = json['categories'];
    routeId = json['route_id'];
    totalInvestmentAmount = json['total_investment_amount'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_logo'] = this.companyLogo;
    data['custom_id'] = this.customId;
    data['product_name'] = this.productName;
    data['route_id'] = this.routeId;
    data['total_investment_amount'] = this.totalInvestmentAmount;
    data['amount'] = this.amount;
    data['categories'] = this.categories;
    return data;
  }
}
