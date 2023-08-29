class CleangreenModel {
  List<Data>? data;

  CleangreenModel({this.data});

  CleangreenModel.fromJson(Map<String, dynamic> json) {
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
  CleanAndGreenAssets? cleanAndGreenAssets;

  Data({this.id, this.status, this.createdAt, this.cleanAndGreenAssets});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    cleanAndGreenAssets = json['clean_and_green_assets'] != null
        ? new CleanAndGreenAssets.fromJson(json['clean_and_green_assets'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.cleanAndGreenAssets != null) {
      data['clean_and_green_assets'] = this.cleanAndGreenAssets!.toJson();
    }
    return data;
  }
}

class CleanAndGreenAssets {
  int? id;
  int? productsId;
  int? companiesId;
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
  Companies? companies;

  CleanAndGreenAssets(
      {this.id,
      this.productsId,
      this.companiesId,
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
      this.minimumInvestmentInInt,
      this.companies});

  CleanAndGreenAssets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    companiesId = json['companies_id'];
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
    companies = json['companies'] != null
        ? new Companies.fromJson(json['companies'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['companies_id'] = this.companiesId;
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
    if (this.companies != null) {
      data['companies'] = this.companies!.toJson();
    }
    return data;
  }
}

class Companies {
  int? id;
  String? companyName;
  String? companyLogo;
  int? status;

  Companies({this.id, this.companyName, this.companyLogo, this.status});

  Companies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyName = json['company_name'];
    companyLogo = json['company_logo'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_name'] = this.companyName;
    data['company_logo'] = this.companyLogo;
    data['status'] = this.status;
    return data;
  }
}
