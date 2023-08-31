class VentureDebtDetailsModel {
  Data? data;

  VentureDebtDetailsModel({this.data});

  VentureDebtDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? companyName;
  String? slug;
  String? sector;
  String? minimumInvestment;
  String? tenure;
  String? totalIssueSize;
  String? interestPayout;
  String? principalPayout;
  String? expectedReturn;
  String? collateralCoverMultiple;
  String? aboutCompany;
  String? instrumentType;
  String? facePerValueUnit;
  String? prepaymentCovenants;
  String? sourceOfFundsRepaymentDebt;
  String? minimumInvestmentInInt;

  Data(
      {this.id,
      this.productsId,
      this.companyName,
      this.slug,
      this.sector,
      this.minimumInvestment,
      this.tenure,
      this.totalIssueSize,
      this.interestPayout,
      this.principalPayout,
      this.expectedReturn,
      this.collateralCoverMultiple,
      this.aboutCompany,
      this.instrumentType,
      this.facePerValueUnit,
      this.prepaymentCovenants,
      this.sourceOfFundsRepaymentDebt,
      this.minimumInvestmentInInt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    companyName = json['company_name'];
    slug = json['slug'];
    sector = json['sector'];
    minimumInvestment = json['minimum_investment'];
    tenure = json['tenure'];
    totalIssueSize = json['total_issue_size'];
    interestPayout = json['interest_payout'];
    principalPayout = json['principal_payout'];
    expectedReturn = json['expected_return'];
    collateralCoverMultiple = json['collateral_cover_multiple'];
    aboutCompany = json['about_company'];
    instrumentType = json['instrument_type'];
    facePerValueUnit = json['face_per_value_unit'];
    prepaymentCovenants = json['prepayment_covenants'];
    sourceOfFundsRepaymentDebt = json['source_of_funds_repayment_debt'];
    minimumInvestmentInInt = json['minimum_investment_in_int'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['company_name'] = this.companyName;
    data['slug'] = this.slug;
    data['sector'] = this.sector;
    data['minimum_investment'] = this.minimumInvestment;
    data['tenure'] = this.tenure;
    data['total_issue_size'] = this.totalIssueSize;
    data['interest_payout'] = this.interestPayout;
    data['principal_payout'] = this.principalPayout;
    data['expected_return'] = this.expectedReturn;
    data['collateral_cover_multiple'] = this.collateralCoverMultiple;
    data['about_company'] = this.aboutCompany;
    data['instrument_type'] = this.instrumentType;
    data['face_per_value_unit'] = this.facePerValueUnit;
    data['prepayment_covenants'] = this.prepaymentCovenants;
    data['source_of_funds_repayment_debt'] = this.sourceOfFundsRepaymentDebt;
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    return data;
  }
}
