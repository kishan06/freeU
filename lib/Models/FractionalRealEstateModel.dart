class FractionalRealEstateModel {
  List<Data>? data;

  FractionalRealEstateModel({this.data});

  FractionalRealEstateModel.fromJson(Map<String, dynamic> json) {
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
  int? status;
  String? createdAt;
  FractionalRealEstate? fractionalRealEstate;

  Data({this.id, this.status, this.createdAt, this.fractionalRealEstate});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    fractionalRealEstate = json['fractional_real_estate'] != null
        ? new FractionalRealEstate.fromJson(json['fractional_real_estate'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.fractionalRealEstate != null) {
      data['fractional_real_estate'] = this.fractionalRealEstate!.toJson();
    }
    return data;
  }
}

class FractionalRealEstate {
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
  String? minimumInvestmentInInt;
  Companies? companies;

  FractionalRealEstate(
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
      this.hurdleRate,
      this.minimumInvestmentInInt,
      this.companies});

  FractionalRealEstate.fromJson(Map<String, dynamic> json) {
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
    minimumInvestmentInInt = json['minimum_investment_in_int'];
    companies = json['companies'] != null
        ? new Companies.fromJson(json['companies'])
        : null;
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
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    if (this.companies != null) {
      data['companies'] = this.companies!.toJson();
    }
    return data;
  }
}

class Companies {
  int? id;
  String? companyName;
  String? companyLogo;
  int? status;

  Companies({this.id, this.companyName, this.companyLogo, this.status});

  Companies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyName = json['company_name'];
    companyLogo = json['company_logo'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_name'] = this.companyName;
    data['company_logo'] = this.companyLogo;
    data['status'] = this.status;
    return data;
  }
}
