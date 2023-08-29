class LeaseFinancingModel {
  List<Data>? data;

  LeaseFinancingModel({this.data});

  LeaseFinancingModel.fromJson(Map<String, dynamic> json) {
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
  LeaseBasedFinancing? leaseBasedFinancing;

  Data({this.id, this.status, this.createdAt, this.leaseBasedFinancing});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    leaseBasedFinancing = json['lease_based_financing'] != null
        ? new LeaseBasedFinancing.fromJson(json['lease_based_financing'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.leaseBasedFinancing != null) {
      data['lease_based_financing'] = this.leaseBasedFinancing!.toJson();
    }
    return data;
  }
}

class LeaseBasedFinancing {
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

  LeaseBasedFinancing(
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

  LeaseBasedFinancing.fromJson(Map<String, dynamic> json) {
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
