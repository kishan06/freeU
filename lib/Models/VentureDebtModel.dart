class VentureDebtModel {
  List<Data>? data;

  VentureDebtModel({this.data});

  VentureDebtModel.fromJson(Map<String, dynamic> json) {
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
  VentureDebt? ventureDebt;

  Data({this.id, this.status, this.createdAt, this.ventureDebt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    ventureDebt = json['venture_debt'] != null
        ? new VentureDebt.fromJson(json['venture_debt'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.ventureDebt != null) {
      data['venture_debt'] = this.ventureDebt!.toJson();
    }
    return data;
  }
}

class VentureDebt {
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
  String? companies;

  VentureDebt(
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
      this.minimumInvestmentInInt,
      this.companies});

  VentureDebt.fromJson(Map<String, dynamic> json) {
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
    companies = json['companies'];
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
    data['companies'] = this.companies;
    return data;
  }
}
