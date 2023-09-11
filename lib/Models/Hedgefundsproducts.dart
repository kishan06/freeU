class HedgeFundsproductsdata {
  List<Data>? data;

  HedgeFundsproductsdata({this.data});

  HedgeFundsproductsdata.fromJson(Map<String, dynamic> json) {
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
  Funds? funds;

  Data({this.id, this.status, this.createdAt, this.funds});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    funds = json['funds'] != null ? new Funds.fromJson(json['funds']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.funds != null) {
      data['funds'] = this.funds!.toJson();
    }
    return data;
  }
}

class Funds {
  int? id;
  int? productsId;
  String? slug;
  String? issuer;
  String? fundName;
  String? fundType;
  String? aboutIssuer;
  String? fundDescription;
  String? sharpeRatio;
  String? annualizedVolatility;
  String? maxDropdown;
  String? isin;
  String? inceptionDate;
  String? fundAum;
  String? expenseRatio;
  String? navPerUnit;
  String? minimumInvestment;
  String? ytd;
  String? year1Return;
  String? year3Return;
  String? createdAt;
  String? updatedAt;
  List<Returns>? returns;

  Funds(
      {this.id,
      this.productsId,
      this.slug,
      this.issuer,
      this.fundName,
      this.fundType,
      this.aboutIssuer,
      this.fundDescription,
      this.sharpeRatio,
      this.annualizedVolatility,
      this.maxDropdown,
      this.isin,
      this.inceptionDate,
      this.fundAum,
      this.expenseRatio,
      this.navPerUnit,
      this.minimumInvestment,
      this.ytd,
      this.year1Return,
      this.year3Return,
      this.createdAt,
      this.updatedAt,
      this.returns});

  Funds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    slug = json['slug'];
    issuer = json['issuer'];
    fundName = json['fund_name'];
    fundType = json['fund_type'];
    aboutIssuer = json['about_issuer'];
    fundDescription = json['fund_description'];
    sharpeRatio = json['sharpe_ratio'];
    annualizedVolatility = json['annualized_volatility'];
    maxDropdown = json['max_dropdown'];
    isin = json['isin'];
    inceptionDate = json['inception_date'];
    fundAum = json['fund_aum'];
    expenseRatio = json['expense_ratio'];
    navPerUnit = json['nav_per_unit'];
    minimumInvestment = json['minimum_investment'];
    ytd = json['ytd'];
    year1Return = json['year1_return'];
    year3Return = json['year3_return'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['returns'] != null) {
      returns = <Returns>[];
      json['returns'].forEach((v) {
        returns!.add(new Returns.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['slug'] = this.slug;
    data['issuer'] = this.issuer;
    data['fund_name'] = this.fundName;
    data['fund_type'] = this.fundType;
    data['about_issuer'] = this.aboutIssuer;
    data['fund_description'] = this.fundDescription;
    data['sharpe_ratio'] = this.sharpeRatio;
    data['annualized_volatility'] = this.annualizedVolatility;
    data['max_dropdown'] = this.maxDropdown;
    data['isin'] = this.isin;
    data['inception_date'] = this.inceptionDate;
    data['fund_aum'] = this.fundAum;
    data['expense_ratio'] = this.expenseRatio;
    data['nav_per_unit'] = this.navPerUnit;
    data['minimum_investment'] = this.minimumInvestment;
    data['ytd'] = this.ytd;
    data['year1_return'] = this.year1Return;
    data['year3_return'] = this.year3Return;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.returns != null) {
      data['returns'] = this.returns!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Returns {
  int? id;
  int? fundsId;
  String? label;
  String? value;
  String? createdAt;
  String? updatedAt;

  Returns(
      {this.id,
      this.fundsId,
      this.label,
      this.value,
      this.createdAt,
      this.updatedAt});

  Returns.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fundsId = json['funds_id'];
    label = json['label'];
    value = json['value'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['funds_id'] = this.fundsId;
    data['label'] = this.label;
    data['value'] = this.value;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
