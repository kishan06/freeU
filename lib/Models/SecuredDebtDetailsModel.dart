class SecuredDebtDetailsModel {
  Data? data;

  SecuredDebtDetailsModel({this.data});

  SecuredDebtDetailsModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  int? productsId;
  String? slug;
  String? productName;
  String? totalDealSize;
  String? minimumInvestment;
  String? creditRating;
  String? dealTenure;
  String? targetIrr;
  String? targetMultiple;
  String? payoutFrequency;
  String? principalReturnedIn;
  String? averageAnnualPayback;
  String? securityEnhancement;
  String? listingDetails;
  String? minimumInvestmentInInt;

  Data(
      {this.id,
      this.productsId,
      this.slug,
      this.productName,
      this.totalDealSize,
      this.minimumInvestment,
      this.creditRating,
      this.dealTenure,
      this.targetIrr,
      this.targetMultiple,
      this.payoutFrequency,
      this.principalReturnedIn,
      this.averageAnnualPayback,
      this.securityEnhancement,
      this.listingDetails,
      this.minimumInvestmentInInt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    slug = json['slug'];
    productName = json['product_name'];
    totalDealSize = json['total_deal_size'];
    minimumInvestment = json['minimum_investment'];
    creditRating = json['credit_rating'];
    dealTenure = json['deal_tenure'];
    targetIrr = json['target_irr'];
    targetMultiple = json['target_multiple'];
    payoutFrequency = json['payout_frequency'];
    principalReturnedIn = json['principal_returned_in'];
    averageAnnualPayback = json['average_annual_payback'];
    securityEnhancement = json['security_enhancement'];
    listingDetails = json['listing_details'];
    minimumInvestmentInInt = json['minimum_investment_in_int'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['slug'] = this.slug;
    data['product_name'] = this.productName;
    data['total_deal_size'] = this.totalDealSize;
    data['minimum_investment'] = this.minimumInvestment;
    data['credit_rating'] = this.creditRating;
    data['deal_tenure'] = this.dealTenure;
    data['target_irr'] = this.targetIrr;
    data['target_multiple'] = this.targetMultiple;
    data['payout_frequency'] = this.payoutFrequency;
    data['principal_returned_in'] = this.principalReturnedIn;
    data['average_annual_payback'] = this.averageAnnualPayback;
    data['security_enhancement'] = this.securityEnhancement;
    data['listing_details'] = this.listingDetails;
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    return data;
  }
}
