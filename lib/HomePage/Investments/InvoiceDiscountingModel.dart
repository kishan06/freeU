class InvoiceDiscountingModel {
  BasicDetails? basicDetails;
  String? companyName;
  String? companyLogo;
  String? category;
  Data? data;

  InvoiceDiscountingModel(
      {this.basicDetails,
      this.companyName,
      this.companyLogo,
      this.category,
      this.data});

  InvoiceDiscountingModel.fromJson(Map<String, dynamic> json) {
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
  String? counterParty;
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
  int? investmentDate;
  String? amountInvested;
  String? totalGrossRepaidAmount;
  int? tenureInDays;
  String? principalPaymentFrequency;
  String? interestPaymentFrequency;
  int? nextRepaymentDueDate;
  int? maturityDate;
  String? nextRepaymentAmount;
  String? expectedIrr;
  String? repaymentSchedule;
  int? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.customId,
      this.investmentDate,
      this.amountInvested,
      this.totalGrossRepaidAmount,
      this.tenureInDays,
      this.principalPaymentFrequency,
      this.interestPaymentFrequency,
      this.nextRepaymentDueDate,
      this.maturityDate,
      this.nextRepaymentAmount,
      this.expectedIrr,
      this.repaymentSchedule,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customId = json['custom_id'];
    investmentDate = json['investment_date'];
    amountInvested = json['amount_invested'];
    totalGrossRepaidAmount = json['total_gross_repaid_amount'];
    tenureInDays = json['tenure_in_days'];
    principalPaymentFrequency = json['principal_payment_frequency'];
    interestPaymentFrequency = json['interest_payment_frequency'];
    nextRepaymentDueDate = json['next_repayment_due_date'];
    maturityDate = json['maturity_date'];
    nextRepaymentAmount = json['next_repayment_amount'];
    expectedIrr = json['expected_irr'];
    repaymentSchedule = json['repayment_schedule'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['custom_id'] = this.customId;
    data['investment_date'] = this.investmentDate;
    data['amount_invested'] = this.amountInvested;
    data['total_gross_repaid_amount'] = this.totalGrossRepaidAmount;
    data['tenure_in_days'] = this.tenureInDays;
    data['principal_payment_frequency'] = this.principalPaymentFrequency;
    data['interest_payment_frequency'] = this.interestPaymentFrequency;
    data['next_repayment_due_date'] = this.nextRepaymentDueDate;
    data['maturity_date'] = this.maturityDate;
    data['next_repayment_amount'] = this.nextRepaymentAmount;
    data['expected_irr'] = this.expectedIrr;
    data['repayment_schedule'] = this.repaymentSchedule;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
