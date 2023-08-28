class FractionalDetailsModel {
  Data? data;

  FractionalDetailsModel({this.data});

  FractionalDetailsModel.fromJson(Map<String, dynamic> json) {
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
  int? companiesId;
  String? slug;
  String? propertyNameAndLocation;
  String? propertyDescription;
  String? propertyGrade;
  String? assetType;
  String? tenant;
  String? dealSizeInCrore;
  String? couponRateOnCcd;
  String? rentalEscalation;
  String? capitalAppreciation;
  String? expectedIrr;
  String? cagr;
  Null? minimumInvestment;
  String? minimumInvestmentLockin;
  String? tenantLeaseTerm;
  String? tenantLockIn;
  String? tenantSecurityDeposit;
  String? annualManagementFee;
  String? performanceFees;
  String? hurdleRate;

  Data(
      {this.id,
      this.productsId,
      this.companiesId,
      this.slug,
      this.propertyNameAndLocation,
      this.propertyDescription,
      this.propertyGrade,
      this.assetType,
      this.tenant,
      this.dealSizeInCrore,
      this.couponRateOnCcd,
      this.rentalEscalation,
      this.capitalAppreciation,
      this.expectedIrr,
      this.cagr,
      this.minimumInvestment,
      this.minimumInvestmentLockin,
      this.tenantLeaseTerm,
      this.tenantLockIn,
      this.tenantSecurityDeposit,
      this.annualManagementFee,
      this.performanceFees,
      this.hurdleRate});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    companiesId = json['companies_id'];
    slug = json['slug'];
    propertyNameAndLocation = json['property_name_and_location'];
    propertyDescription = json['property_description'];
    propertyGrade = json['property_grade'];
    assetType = json['asset_type'];
    tenant = json['tenant'];
    dealSizeInCrore = json['deal_size_in_crore'];
    couponRateOnCcd = json['coupon_rate_on_ccd'];
    rentalEscalation = json['rental_escalation'];
    capitalAppreciation = json['capital_appreciation'];
    expectedIrr = json['expected_irr'];
    cagr = json['cagr'];
    minimumInvestment = json['minimum_investment'];
    minimumInvestmentLockin = json['minimum_investment_lockin'];
    tenantLeaseTerm = json['tenant_lease_term'];
    tenantLockIn = json['tenant_lock_in'];
    tenantSecurityDeposit = json['tenant_security_deposit'];
    annualManagementFee = json['annual_management_fee'];
    performanceFees = json['performance_fees'];
    hurdleRate = json['hurdle_rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['companies_id'] = this.companiesId;
    data['slug'] = this.slug;
    data['property_name_and_location'] = this.propertyNameAndLocation;
    data['property_description'] = this.propertyDescription;
    data['property_grade'] = this.propertyGrade;
    data['asset_type'] = this.assetType;
    data['tenant'] = this.tenant;
    data['deal_size_in_crore'] = this.dealSizeInCrore;
    data['coupon_rate_on_ccd'] = this.couponRateOnCcd;
    data['rental_escalation'] = this.rentalEscalation;
    data['capital_appreciation'] = this.capitalAppreciation;
    data['expected_irr'] = this.expectedIrr;
    data['cagr'] = this.cagr;
    data['minimum_investment'] = this.minimumInvestment;
    data['minimum_investment_lockin'] = this.minimumInvestmentLockin;
    data['tenant_lease_term'] = this.tenantLeaseTerm;
    data['tenant_lock_in'] = this.tenantLockIn;
    data['tenant_security_deposit'] = this.tenantSecurityDeposit;
    data['annual_management_fee'] = this.annualManagementFee;
    data['performance_fees'] = this.performanceFees;
    data['hurdle_rate'] = this.hurdleRate;
    return data;
  }
}
