class CleangreenDetailsModel {
  Data? data;

  CleangreenDetailsModel({this.data});

  CleangreenDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? projectName;
  String? slug;
  String? focusArea;
  String? assetValue;
  String? assetLife;
  String? entryLoad;
  String? lockinPeriod;
  String? minimumInvestment;
  String? maximumInvestment;
  String? expectedReturnsIrr;
  String? payouts;
  String? minimumInvestmentInInt;

  Data(
      {this.id,
      this.productsId,
      this.projectName,
      this.slug,
      this.focusArea,
      this.assetValue,
      this.assetLife,
      this.entryLoad,
      this.lockinPeriod,
      this.minimumInvestment,
      this.maximumInvestment,
      this.expectedReturnsIrr,
      this.payouts,
      this.minimumInvestmentInInt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    projectName = json['project_name'];
    slug = json['slug'];
    focusArea = json['focus_area'];
    assetValue = json['asset_value'];
    assetLife = json['asset_life'];
    entryLoad = json['entry_load'];
    lockinPeriod = json['lockin_period'];
    minimumInvestment = json['minimum_investment'];
    maximumInvestment = json['maximum_investment'];
    expectedReturnsIrr = json['expected_returns_irr'];
    payouts = json['payouts'];
    minimumInvestmentInInt = json['minimum_investment_in_int'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['project_name'] = this.projectName;
    data['slug'] = this.slug;
    data['focus_area'] = this.focusArea;
    data['asset_value'] = this.assetValue;
    data['asset_life'] = this.assetLife;
    data['entry_load'] = this.entryLoad;
    data['lockin_period'] = this.lockinPeriod;
    data['minimum_investment'] = this.minimumInvestment;
    data['maximum_investment'] = this.maximumInvestment;
    data['expected_returns_irr'] = this.expectedReturnsIrr;
    data['payouts'] = this.payouts;
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    return data;
  }
}
