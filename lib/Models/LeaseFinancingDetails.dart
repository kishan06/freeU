class LeaseFinancingDetailsModel {
  Data? data;

  LeaseFinancingDetailsModel({this.data});

  LeaseFinancingDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? company;
  String? slug;
  String? assetClass;
  String? underlyingAsset;
  String? sector;
  String? mobilityPlatform;
  String? totalDealSize;
  String? minimumInvestment;
  String? tenure;
  String? payoutFrequency;
  String? preTaxReturn;
  String? minimumInvestmentInInt;

  Data(
      {this.id,
      this.productsId,
      this.company,
      this.slug,
      this.assetClass,
      this.underlyingAsset,
      this.sector,
      this.mobilityPlatform,
      this.totalDealSize,
      this.minimumInvestment,
      this.tenure,
      this.payoutFrequency,
      this.preTaxReturn,
      this.minimumInvestmentInInt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    company = json['company'];
    slug = json['slug'];
    assetClass = json['asset_class'];
    underlyingAsset = json['underlying_asset'];
    sector = json['sector'];
    mobilityPlatform = json['mobility_platform'];
    totalDealSize = json['total_deal_size'];
    minimumInvestment = json['minimum_investment'];
    tenure = json['tenure'];
    payoutFrequency = json['payout_frequency'];
    preTaxReturn = json['pre_tax_return'];
    minimumInvestmentInInt = json['minimum_investment_in_int'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['company'] = this.company;
    data['slug'] = this.slug;
    data['asset_class'] = this.assetClass;
    data['underlying_asset'] = this.underlyingAsset;
    data['sector'] = this.sector;
    data['mobility_platform'] = this.mobilityPlatform;
    data['total_deal_size'] = this.totalDealSize;
    data['minimum_investment'] = this.minimumInvestment;
    data['tenure'] = this.tenure;
    data['payout_frequency'] = this.payoutFrequency;
    data['pre_tax_return'] = this.preTaxReturn;
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    return data;
  }
}
