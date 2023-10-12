class FractionalRealEstateModel {
  BasicDetails? basicDetails;
  String? companyName;
  String? companyLogo;
  String? category;
  Data? data;

  FractionalRealEstateModel(
      {this.basicDetails,
      this.companyName,
      this.companyLogo,
      this.category,
      this.data});

  FractionalRealEstateModel.fromJson(Map<String, dynamic> json) {
    basicDetails = json['basic-details'] != null
        ? new BasicDetails.fromJson(json['basic-details'])
        : null;
    companyName = json['company_name'];
    companyLogo = json['company_logo'];
    category = json['category'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.basicDetails != null) {
      data['basic-details'] = this.basicDetails!.toJson();
    }
    data['company_name'] = this.companyName;
    data['company_logo'] = this.companyLogo;
    data['category'] = this.category;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class BasicDetails {
  int? id;
  int? usersId;
  String? categories;
  String? customId;
  String? investorName;
  String? pan;
  String? productCategory;
  String? investmentPlatform;
  String? productName;
  Null? counterParty;
  String? accountNumber;
  String? spvDetails;
  Null? classOfUnits;
  Null? fundCategory;
  int? status;
  String? holdingStatus;
  String? createdAt;
  String? updatedAt;

  BasicDetails(
      {this.id,
      this.usersId,
      this.categories,
      this.customId,
      this.investorName,
      this.pan,
      this.productCategory,
      this.investmentPlatform,
      this.productName,
      this.counterParty,
      this.accountNumber,
      this.spvDetails,
      this.classOfUnits,
      this.fundCategory,
      this.status,
      this.holdingStatus,
      this.createdAt,
      this.updatedAt});

  BasicDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usersId = json['users_id'];
    categories = json['categories'];
    customId = json['custom_id'];
    investorName = json['investor_name'];
    pan = json['pan'];
    productCategory = json['product_category'];
    investmentPlatform = json['investment_platform'];
    productName = json['product_name'];
    counterParty = json['counter_party'];
    accountNumber = json['account_number'];
    spvDetails = json['spv_details'];
    classOfUnits = json['class_of_units'];
    fundCategory = json['fund_category'];
    status = json['status'];
    holdingStatus = json['holding_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['users_id'] = this.usersId;
    data['categories'] = this.categories;
    data['custom_id'] = this.customId;
    data['investor_name'] = this.investorName;
    data['pan'] = this.pan;
    data['product_category'] = this.productCategory;
    data['investment_platform'] = this.investmentPlatform;
    data['product_name'] = this.productName;
    data['counter_party'] = this.counterParty;
    data['account_number'] = this.accountNumber;
    data['spv_details'] = this.spvDetails;
    data['class_of_units'] = this.classOfUnits;
    data['fund_category'] = this.fundCategory;
    data['status'] = this.status;
    data['holding_status'] = this.holdingStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Data {
  int? id;
  String? customId;
  String? totalValueOfTheProperty;
  String? investmentValue;
  int? investmentDate;
  String? totalGrossInterest;
  String? tds;
  String? totalNetInterest;
  String? grossEntryYieldInPct;
  String? targetReturnInPct;
  String? absoluteReturnTillDate;
  String? absoluteReturnTillDateInPct;
  String? statementReports;
  int? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.customId,
      this.totalValueOfTheProperty,
      this.investmentValue,
      this.investmentDate,
      this.totalGrossInterest,
      this.tds,
      this.totalNetInterest,
      this.grossEntryYieldInPct,
      this.targetReturnInPct,
      this.absoluteReturnTillDate,
      this.absoluteReturnTillDateInPct,
      this.statementReports,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customId = json['custom_id'];
    totalValueOfTheProperty = json['total_value_of_the_property'];
    investmentValue = json['investment_value'];
    investmentDate = json['investment_date'];
    totalGrossInterest = json['total_gross_interest'];
    tds = json['tds'];
    totalNetInterest = json['total_net_interest'];
    grossEntryYieldInPct = json['gross_entry_yield_in_pct'];
    targetReturnInPct = json['target_return_in_pct'];
    absoluteReturnTillDate = json['absolute_return_till_date'];
    absoluteReturnTillDateInPct = json['absolute_return_till_date_in_pct'];
    statementReports = json['statement_reports'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['custom_id'] = this.customId;
    data['total_value_of_the_property'] = this.totalValueOfTheProperty;
    data['investment_value'] = this.investmentValue;
    data['investment_date'] = this.investmentDate;
    data['total_gross_interest'] = this.totalGrossInterest;
    data['tds'] = this.tds;
    data['total_net_interest'] = this.totalNetInterest;
    data['gross_entry_yield_in_pct'] = this.grossEntryYieldInPct;
    data['target_return_in_pct'] = this.targetReturnInPct;
    data['absolute_return_till_date'] = this.absoluteReturnTillDate;
    data['absolute_return_till_date_in_pct'] = this.absoluteReturnTillDateInPct;
    data['statement_reports'] = this.statementReports;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
