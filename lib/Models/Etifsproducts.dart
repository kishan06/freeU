class Etifsproductsdata {
  List<Data>? data;

  Etifsproductsdata({this.data});

  Etifsproductsdata.fromJson(Map<String, dynamic> json) {
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
  Exchanges? exchanges;

  Data({this.id, this.status, this.createdAt, this.exchanges});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    exchanges = json['exchanges'] != null
        ? new Exchanges.fromJson(json['exchanges'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.exchanges != null) {
      data['exchanges'] = this.exchanges!.toJson();
    }
    return data;
  }
}

class Exchanges {
  int? id;
  int? productsId;
  String? name;
  int? type;
  String? slug;
  String? ticker;
  String? exchange;
  String? about;
  String? industry;
  String? marketCap;
  String? peRatio;
  String? dividendYield;
  String? beta;
  String? provider;
  String? category;
  String? expenseRatio;
  String? month1Return;
  String? month6Return;
  String? year1Return;
  String? year3Return;
  String? createdAt;
  String? updatedAt;

  Exchanges(
      {this.id,
      this.productsId,
      this.name,
      this.type,
      this.slug,
      this.ticker,
      this.exchange,
      this.about,
      this.industry,
      this.marketCap,
      this.peRatio,
      this.dividendYield,
      this.beta,
      this.provider,
      this.category,
      this.expenseRatio,
      this.month1Return,
      this.month6Return,
      this.year1Return,
      this.year3Return,
      this.createdAt,
      this.updatedAt});

  Exchanges.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    name = json['name'];
    type = json['type'];
    slug = json['slug'];
    ticker = json['ticker'];
    exchange = json['exchange'];
    about = json['about'];
    industry = json['industry'];
    marketCap = json['market_cap'];
    peRatio = json['pe_ratio'];
    dividendYield = json['dividend_yield'];
    beta = json['beta'];
    provider = json['provider'];
    category = json['category'];
    expenseRatio = json['expense_ratio'];
    month1Return = json['month1_return'];
    month6Return = json['month6_return'];
    year1Return = json['year1_return'];
    year3Return = json['year3_return'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['name'] = this.name;
    data['type'] = this.type;
    data['slug'] = this.slug;
    data['ticker'] = this.ticker;
    data['exchange'] = this.exchange;
    data['about'] = this.about;
    data['industry'] = this.industry;
    data['market_cap'] = this.marketCap;
    data['pe_ratio'] = this.peRatio;
    data['dividend_yield'] = this.dividendYield;
    data['beta'] = this.beta;
    data['provider'] = this.provider;
    data['category'] = this.category;
    data['expense_ratio'] = this.expenseRatio;
    data['month1_return'] = this.month1Return;
    data['month6_return'] = this.month6Return;
    data['year1_return'] = this.year1Return;
    data['year3_return'] = this.year3Return;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
