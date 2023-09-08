class Sovereignbondsproductsdata {
  List<Data>? data;

  Sovereignbondsproductsdata({this.data});

  Sovereignbondsproductsdata.fromJson(Map<String, dynamic> json) {
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
  Bonds? bonds;

  Data({this.id, this.status, this.createdAt, this.bonds});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    bonds = json['bonds'] != null ? new Bonds.fromJson(json['bonds']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.bonds != null) {
      data['bonds'] = this.bonds!.toJson();
    }
    return data;
  }
}

class Bonds {
  int? id;
  int? productsId;
  String? companiesId;
  String? slug;
  String? issuer;
  int? type;
  String? bondType;
  String? aboutIssuer;
  String? industry;
  String? countryOfRisk;
  String? countryOfIncorporation;
  String? isin;
  String? bondTypeOrMaturityDate;
  String? callDate;
  String? coupon;
  String? indicativeYieldPaMid;
  String? indicativePriceUsMid;
  String? minimumInvestment;
  String? constructionStatus;
  String? yieldToWorstPaAsk;
  String? yieldToWorstPaBid;
  String? priceAsk;
  String? priceBid;
  String? accruedInterest;
  String? yieldToCall;
  String? duration;
  String? amountOutstanding;
  String? collateralType;
  String? creditRating;
  String? createdAt;
  String? updatedAt;

  Bonds(
      {this.id,
      this.productsId,
      this.companiesId,
      this.slug,
      this.issuer,
      this.type,
      this.bondType,
      this.aboutIssuer,
      this.industry,
      this.countryOfRisk,
      this.countryOfIncorporation,
      this.isin,
      this.bondTypeOrMaturityDate,
      this.callDate,
      this.coupon,
      this.indicativeYieldPaMid,
      this.indicativePriceUsMid,
      this.minimumInvestment,
      this.constructionStatus,
      this.yieldToWorstPaAsk,
      this.yieldToWorstPaBid,
      this.priceAsk,
      this.priceBid,
      this.accruedInterest,
      this.yieldToCall,
      this.duration,
      this.amountOutstanding,
      this.collateralType,
      this.creditRating,
      this.createdAt,
      this.updatedAt});

  Bonds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    companiesId = json['companies_id'];
    slug = json['slug'];
    issuer = json['issuer'];
    type = json['type'];
    bondType = json['bond_type'];
    aboutIssuer = json['about_issuer'];
    industry = json['industry'];
    countryOfRisk = json['country_of_risk'];
    countryOfIncorporation = json['country_of_incorporation'];
    isin = json['isin'];
    bondTypeOrMaturityDate = json['bond_type_or_maturity_date'];
    callDate = json['call_date'];
    coupon = json['coupon'];
    indicativeYieldPaMid = json['indicative_yield_pa_mid'];
    indicativePriceUsMid = json['indicative_price_us_mid'];
    minimumInvestment = json['minimum_investment'];
    constructionStatus = json['construction_status'];
    yieldToWorstPaAsk = json['yield_to_worst_pa_ask'];
    yieldToWorstPaBid = json['yield_to_worst_pa_bid'];
    priceAsk = json['price_ask'];
    priceBid = json['price_bid'];
    accruedInterest = json['accrued_interest'];
    yieldToCall = json['yield_to_call'];
    duration = json['duration'];
    amountOutstanding = json['amount_outstanding'];
    collateralType = json['collateral_type'];
    creditRating = json['credit_rating'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['companies_id'] = this.companiesId;
    data['slug'] = this.slug;
    data['issuer'] = this.issuer;
    data['type'] = this.type;
    data['bond_type'] = this.bondType;
    data['about_issuer'] = this.aboutIssuer;
    data['industry'] = this.industry;
    data['country_of_risk'] = this.countryOfRisk;
    data['country_of_incorporation'] = this.countryOfIncorporation;
    data['isin'] = this.isin;
    data['bond_type_or_maturity_date'] = this.bondTypeOrMaturityDate;
    data['call_date'] = this.callDate;
    data['coupon'] = this.coupon;
    data['indicative_yield_pa_mid'] = this.indicativeYieldPaMid;
    data['indicative_price_us_mid'] = this.indicativePriceUsMid;
    data['minimum_investment'] = this.minimumInvestment;
    data['construction_status'] = this.constructionStatus;
    data['yield_to_worst_pa_ask'] = this.yieldToWorstPaAsk;
    data['yield_to_worst_pa_bid'] = this.yieldToWorstPaBid;
    data['price_ask'] = this.priceAsk;
    data['price_bid'] = this.priceBid;
    data['accrued_interest'] = this.accruedInterest;
    data['yield_to_call'] = this.yieldToCall;
    data['duration'] = this.duration;
    data['amount_outstanding'] = this.amountOutstanding;
    data['collateral_type'] = this.collateralType;
    data['credit_rating'] = this.creditRating;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
