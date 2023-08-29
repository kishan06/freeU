class InvoiceDiscountingModel {
  List<Data>? data;

  InvoiceDiscountingModel({this.data});

  InvoiceDiscountingModel.fromJson(Map<String, dynamic> json) {
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
  InvoiceDiscounting? invoiceDiscounting;

  Data({this.id, this.status, this.createdAt, this.invoiceDiscounting});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    invoiceDiscounting = json['invoice_discounting'] != null
        ? new InvoiceDiscounting.fromJson(json['invoice_discounting'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.invoiceDiscounting != null) {
      data['invoice_discounting'] = this.invoiceDiscounting!.toJson();
    }
    return data;
  }
}

class InvoiceDiscounting {
  int? id;
  int? productsId;
  String? companyName;
  String? slug;
  String? sector;
  String? aboutCompany;
  String? keyPerformanceMetrics;
  String? minimumInvestment;
  String? totalDealSize;
  String? tenure;
  String? preTaxIrr;
  String? couponRate;
  String? vendor;
  String? recourseOn;
  String? settlementDate;
  String? payoutFrequency;
  String? paymentObligor;
  String? securityStructure;
  String? minimumInvestmentInInt;

  InvoiceDiscounting(
      {this.id,
      this.productsId,
      this.companyName,
      this.slug,
      this.sector,
      this.aboutCompany,
      this.keyPerformanceMetrics,
      this.minimumInvestment,
      this.totalDealSize,
      this.tenure,
      this.preTaxIrr,
      this.couponRate,
      this.vendor,
      this.recourseOn,
      this.settlementDate,
      this.payoutFrequency,
      this.paymentObligor,
      this.securityStructure,
      this.minimumInvestmentInInt});

  InvoiceDiscounting.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    companyName = json['company_name'];
    slug = json['slug'];
    sector = json['sector'];
    aboutCompany = json['about_company'];
    keyPerformanceMetrics = json['key_performance_metrics'];
    minimumInvestment = json['minimum_investment'];
    totalDealSize = json['total_deal_size'];
    tenure = json['tenure'];
    preTaxIrr = json['pre_tax_irr'];
    couponRate = json['coupon_rate'];
    vendor = json['vendor'];
    recourseOn = json['recourse_on'];
    settlementDate = json['settlement_date'];
    payoutFrequency = json['payout_frequency'];
    paymentObligor = json['payment_obligor'];
    securityStructure = json['security_structure'];
    minimumInvestmentInInt = json['minimum_investment_in_int'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['company_name'] = this.companyName;
    data['slug'] = this.slug;
    data['sector'] = this.sector;
    data['about_company'] = this.aboutCompany;
    data['key_performance_metrics'] = this.keyPerformanceMetrics;
    data['minimum_investment'] = this.minimumInvestment;
    data['total_deal_size'] = this.totalDealSize;
    data['tenure'] = this.tenure;
    data['pre_tax_irr'] = this.preTaxIrr;
    data['coupon_rate'] = this.couponRate;
    data['vendor'] = this.vendor;
    data['recourse_on'] = this.recourseOn;
    data['settlement_date'] = this.settlementDate;
    data['payout_frequency'] = this.payoutFrequency;
    data['payment_obligor'] = this.paymentObligor;
    data['security_structure'] = this.securityStructure;
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    return data;
  }
}
