class HighyieldDetailsModel {
  Data? data;

  HighyieldDetailsModel({this.data});

  HighyieldDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? securityName;
  String? securityType;
  String? isin;
  String? issuerCompany;
  String? issueSize;
  String? issueType;
  String? listingDetails;
  String? ratingCategory;
  String? minimumInvestment;
  String? couponRate;
  String? yieldToMaturity;
  String? interestPaymentFrequency;
  String? allotmentDate;
  String? maturityDate;
  String? minimumInvestmentInInt;

  Data(
      {this.id,
      this.productsId,
      this.slug,
      this.securityName,
      this.securityType,
      this.isin,
      this.issuerCompany,
      this.issueSize,
      this.issueType,
      this.listingDetails,
      this.ratingCategory,
      this.minimumInvestment,
      this.couponRate,
      this.yieldToMaturity,
      this.interestPaymentFrequency,
      this.allotmentDate,
      this.maturityDate,
      this.minimumInvestmentInInt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    slug = json['slug'];
    securityName = json['security_name'];
    securityType = json['security_type'];
    isin = json['isin'];
    issuerCompany = json['issuer_company'];
    issueSize = json['issue_size'];
    issueType = json['issue_type'];
    listingDetails = json['listing_details'];
    ratingCategory = json['rating_category'];
    minimumInvestment = json['minimum_investment'];
    couponRate = json['coupon_rate'];
    yieldToMaturity = json['yield_to_maturity'];
    interestPaymentFrequency = json['interest_payment_frequency'];
    allotmentDate = json['allotment_date'];
    maturityDate = json['maturity_date'];
    minimumInvestmentInInt = json['minimum_investment_in_int'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['slug'] = this.slug;
    data['security_name'] = this.securityName;
    data['security_type'] = this.securityType;
    data['isin'] = this.isin;
    data['issuer_company'] = this.issuerCompany;
    data['issue_size'] = this.issueSize;
    data['issue_type'] = this.issueType;
    data['listing_details'] = this.listingDetails;
    data['rating_category'] = this.ratingCategory;
    data['minimum_investment'] = this.minimumInvestment;
    data['coupon_rate'] = this.couponRate;
    data['yield_to_maturity'] = this.yieldToMaturity;
    data['interest_payment_frequency'] = this.interestPaymentFrequency;
    data['allotment_date'] = this.allotmentDate;
    data['maturity_date'] = this.maturityDate;
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    return data;
  }
}
