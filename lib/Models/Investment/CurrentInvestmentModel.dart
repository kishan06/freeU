class CurrentInvestmentModel {
  Data? data;

  CurrentInvestmentModel({this.data});

  CurrentInvestmentModel.fromJson(Map<String, dynamic> json) {
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
  CurrentInvestment? currentInvestment;

  Data({this.currentInvestment});

  Data.fromJson(Map<String, dynamic> json) {
    currentInvestment = json['currentInvestment'] != null
        ? new CurrentInvestment.fromJson(json['currentInvestment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.currentInvestment != null) {
      data['currentInvestment'] = this.currentInvestment!.toJson();
    }
    return data;
  }
}

class CurrentInvestment {
  String? totalInvestment;
  List<ProductDetails>? productDetails;
  int? totalInvestmentInInt;

  CurrentInvestment(
      {this.totalInvestment, this.productDetails, this.totalInvestmentInInt});

  CurrentInvestment.fromJson(Map<String, dynamic> json) {
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
  String? categories;
  String? productName;
  String? routeId;
  String? totalInvestmentAmount;
  String? amount;

  ProductDetails(
      {this.companyLogo,this.categories,
      this.customId,
      this.productName,
      this.routeId,
      this.totalInvestmentAmount,
      this.amount});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    companyLogo = json['company_logo'];
    customId = json['custom_id'];
    categories = json["categories"];
    productName = json['product_name'];
    routeId = json['route_id'];
    totalInvestmentAmount = json['total_investment_amount'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_logo'] = this.companyLogo;
    data['custom_id'] = this.customId;
    data['categories'] = this.categories;
    data['product_name'] = this.productName;
    data['route_id'] = this.routeId;
    data['total_investment_amount'] = this.totalInvestmentAmount;
    data['amount'] = this.amount;
    return data;
  }
}
