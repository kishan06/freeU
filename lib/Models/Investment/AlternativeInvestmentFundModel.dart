class AlternativeInvestmentFundModel {
  BasicDetails? basicDetails;
  String? companyName;
  String? companyLogo;
  String? category;
  Data? data;

  AlternativeInvestmentFundModel(
      {this.basicDetails,
      this.companyName,
      this.companyLogo,
      this.category,
      this.data});

  AlternativeInvestmentFundModel.fromJson(Map<String, dynamic> json) {
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
  Null? accountNumber;
  Null? spvDetails;
  String? classOfUnits;
  String? fundCategory;
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
  String? commitmentAmount;
  String? contributionAmount;
  String? contributionCalledAmount;
  String? contributionUncalledAmount;
  String? dateOfInitialContribution;
  String? faceValueNavPerUnit;
  String? principalCapitalRepaid;
  String? grossIncome;
  String? totalFeesPaid;
  String? netIncome;
  String? noOfUnitsAlloted;
  String? noOfUnitsRedeemed;
  String? currentValuation;
  String? currentNav;
  String? noOfUnitsHeld;
  String? statementReports;
  int? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.customId,
      this.commitmentAmount,
      this.contributionAmount,
      this.contributionCalledAmount,
      this.contributionUncalledAmount,
      this.dateOfInitialContribution,
      this.faceValueNavPerUnit,
      this.principalCapitalRepaid,
      this.grossIncome,
      this.totalFeesPaid,
      this.netIncome,
      this.noOfUnitsAlloted,
      this.noOfUnitsRedeemed,
      this.currentValuation,
      this.currentNav,
      this.noOfUnitsHeld,
      this.statementReports,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customId = json['custom_id'];
    commitmentAmount = json['commitment_amount'];
    contributionAmount = json['contribution_amount'];
    contributionCalledAmount = json['contribution_called_amount'];
    contributionUncalledAmount = json['contribution_uncalled_amount'];
    dateOfInitialContribution = json['date_of_initial_contribution'];
    faceValueNavPerUnit = json['face_value_nav_per_unit'];
    principalCapitalRepaid = json['principal_capital_repaid'];
    grossIncome = json['gross_income'];
    totalFeesPaid = json['total_fees_paid'];
    netIncome = json['net_income'];
    noOfUnitsAlloted = json['no_of_units_alloted'];
    noOfUnitsRedeemed = json['no_of_units_redeemed'];
    currentValuation = json['current_valuation'];
    currentNav = json['current_nav'];
    noOfUnitsHeld = json['no_of_units_held'];
    statementReports = json['statement_reports'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['custom_id'] = this.customId;
    data['commitment_amount'] = this.commitmentAmount;
    data['contribution_amount'] = this.contributionAmount;
    data['contribution_called_amount'] = this.contributionCalledAmount;
    data['contribution_uncalled_amount'] = this.contributionUncalledAmount;
    data['date_of_initial_contribution'] = this.dateOfInitialContribution;
    data['face_value_nav_per_unit'] = this.faceValueNavPerUnit;
    data['principal_capital_repaid'] = this.principalCapitalRepaid;
    data['gross_income'] = this.grossIncome;
    data['total_fees_paid'] = this.totalFeesPaid;
    data['net_income'] = this.netIncome;
    data['no_of_units_alloted'] = this.noOfUnitsAlloted;
    data['no_of_units_redeemed'] = this.noOfUnitsRedeemed;
    data['current_valuation'] = this.currentValuation;
    data['current_nav'] = this.currentNav;
    data['no_of_units_held'] = this.noOfUnitsHeld;
    data['statement_reports'] = this.statementReports;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
