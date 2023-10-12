class PeerToPeerLendingModel {
  BasicDetails? basicDetails;
  String? companyName;
  String? companyLogo;
  String? category;
  Data? data;

  PeerToPeerLendingModel(
      {this.basicDetails,
      this.companyName,
      this.companyLogo,
      this.category,
      this.data});

  PeerToPeerLendingModel.fromJson(Map<String, dynamic> json) {
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
  Null? productCategory;
  String? investmentPlatform;
  String? productName;
  Null? counterParty;
  Null? accountNumber;
  Null? spvDetails;
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
  String? totalInvestment;
  String? principalRedemption;
  String? interestPaidout;
  String? netPrincipalInvestment;
  String? capitalisedInterest;
  String? accruedInterest;
  String? portfolioValue;
  String? absoluteReturnInRs;
  String? absoluteReturnInPct;
  String? annualisedReturn;
  String? totalValue;
  String? investmentAmount;
  String? allTimeAmountInvested;
  String? interestAccrued;
  String? netInterestRedemption;
  String? escrowBalance;
  String? averageRoi;
  String? allTimeInvestmentAdded;
  String? totalActiveInvestment;
  String? netExpectedValueAtMaturity;
  String? netAssetValue;
  String? amountWithdrawn;
  String? statementReports;
  int? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.customId,
      this.totalInvestment,
      this.principalRedemption,
      this.interestPaidout,
      this.netPrincipalInvestment,
      this.capitalisedInterest,
      this.accruedInterest,
      this.portfolioValue,
      this.absoluteReturnInRs,
      this.absoluteReturnInPct,
      this.annualisedReturn,
      this.totalValue,
      this.investmentAmount,
      this.allTimeAmountInvested,
      this.interestAccrued,
      this.netInterestRedemption,
      this.escrowBalance,
      this.averageRoi,
      this.allTimeInvestmentAdded,
      this.totalActiveInvestment,
      this.netExpectedValueAtMaturity,
      this.netAssetValue,
      this.amountWithdrawn,
      this.statementReports,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customId = json['custom_id'];
    totalInvestment = json['total_investment'];
    principalRedemption = json['principal_redemption'];
    interestPaidout = json['interest_paidout'];
    netPrincipalInvestment = json['net_principal_investment'];
    capitalisedInterest = json['capitalised_interest'];
    accruedInterest = json['accrued_interest'];
    portfolioValue = json['portfolio_value'];
    absoluteReturnInRs = json['absolute_return_in_rs'];
    absoluteReturnInPct = json['absolute_return_in_pct'];
    annualisedReturn = json['annualised_return'];
    totalValue = json['total_value'];
    investmentAmount = json['investment_amount'];
    allTimeAmountInvested = json['all_time_amount_invested'];
    interestAccrued = json['interest_accrued'];
    netInterestRedemption = json['net_interest_redemption'];
    escrowBalance = json['escrow_balance'];
    averageRoi = json['average_roi'];
    allTimeInvestmentAdded = json['all_time_investment_added'];
    totalActiveInvestment = json['total_active_investment'];
    netExpectedValueAtMaturity = json['net_expected_value_at_maturity'];
    netAssetValue = json['net_asset_value'];
    amountWithdrawn = json['amount_withdrawn'];
    statementReports = json['statement_reports'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['custom_id'] = this.customId;
    data['total_investment'] = this.totalInvestment;
    data['principal_redemption'] = this.principalRedemption;
    data['interest_paidout'] = this.interestPaidout;
    data['net_principal_investment'] = this.netPrincipalInvestment;
    data['capitalised_interest'] = this.capitalisedInterest;
    data['accrued_interest'] = this.accruedInterest;
    data['portfolio_value'] = this.portfolioValue;
    data['absolute_return_in_rs'] = this.absoluteReturnInRs;
    data['absolute_return_in_pct'] = this.absoluteReturnInPct;
    data['annualised_return'] = this.annualisedReturn;
    data['total_value'] = this.totalValue;
    data['investment_amount'] = this.investmentAmount;
    data['all_time_amount_invested'] = this.allTimeAmountInvested;
    data['interest_accrued'] = this.interestAccrued;
    data['net_interest_redemption'] = this.netInterestRedemption;
    data['escrow_balance'] = this.escrowBalance;
    data['average_roi'] = this.averageRoi;
    data['all_time_investment_added'] = this.allTimeInvestmentAdded;
    data['total_active_investment'] = this.totalActiveInvestment;
    data['net_expected_value_at_maturity'] = this.netExpectedValueAtMaturity;
    data['net_asset_value'] = this.netAssetValue;
    data['amount_withdrawn'] = this.amountWithdrawn;
    data['statement_reports'] = this.statementReports;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
