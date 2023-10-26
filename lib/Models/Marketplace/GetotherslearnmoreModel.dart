class GetotherslearnmoreModel {
  bool? invested;
  String? type;
  Data? data;

  GetotherslearnmoreModel({this.invested, this.type, this.data});

  GetotherslearnmoreModel.fromJson(Map<String, dynamic> json) {
    invested = json['invested'];
    type = json['type'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['invested'] = this.invested;
    data['type'] = this.type;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? sellerFormsId;
  String? productCategory;
  String? securityName;
  String? slug;
  String? instrumentType;
  String? instrumentIssuer;
  String? isin;
  String? creditRating;
  String? listed;
  int? dateOfOriginalInvestment;
  int? amountInvested;
  int? noOfUnitsHeld;
  String? payoutFrequency;
  int? faceValuePerUnit;
  String? couponRateInPct;
  int? principalRepaid;
  String? maturityDate;
  int? noOfUnitsOfferedForSale;
  int? expectedSalePricePerUnit;
  String? status;
  String? listingStatus;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.sellerFormsId,
      this.productCategory,
      this.securityName,
      this.slug,
      this.instrumentType,
      this.instrumentIssuer,
      this.isin,
      this.creditRating,
      this.listed,
      this.dateOfOriginalInvestment,
      this.amountInvested,
      this.noOfUnitsHeld,
      this.payoutFrequency,
      this.faceValuePerUnit,
      this.couponRateInPct,
      this.principalRepaid,
      this.maturityDate,
      this.noOfUnitsOfferedForSale,
      this.expectedSalePricePerUnit,
      this.status,
      this.listingStatus,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sellerFormsId = json['seller_forms_id'];
    productCategory = json['product_category'];
    securityName = json['security_name'];
    slug = json['slug'];
    instrumentType = json['instrument_type'];
    instrumentIssuer = json['instrument_issuer'];
    isin = json['isin'];
    creditRating = json['credit_rating'];
    listed = json['listed'];
    dateOfOriginalInvestment = json['date_of_original_investment'];
    amountInvested = json['amount_invested'];
    noOfUnitsHeld = json['no_of_units_held'];
    payoutFrequency = json['payout_frequency'];
    faceValuePerUnit = json['face_value_per_unit'];
    couponRateInPct = json['coupon_rate_in_pct'];
    principalRepaid = json['principal_repaid'];
    maturityDate = json['maturity_date'];
    noOfUnitsOfferedForSale = json['no_of_units_offered_for_sale'];
    expectedSalePricePerUnit = json['expected_sale_price_per_unit'];
    status = json['status'];
    listingStatus = json['listing_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['seller_forms_id'] = this.sellerFormsId;
    data['product_category'] = this.productCategory;
    data['security_name'] = this.securityName;
    data['slug'] = this.slug;
    data['instrument_type'] = this.instrumentType;
    data['instrument_issuer'] = this.instrumentIssuer;
    data['isin'] = this.isin;
    data['credit_rating'] = this.creditRating;
    data['listed'] = this.listed;
    data['date_of_original_investment'] = this.dateOfOriginalInvestment;
    data['amount_invested'] = this.amountInvested;
    data['no_of_units_held'] = this.noOfUnitsHeld;
    data['payout_frequency'] = this.payoutFrequency;
    data['face_value_per_unit'] = this.faceValuePerUnit;
    data['coupon_rate_in_pct'] = this.couponRateInPct;
    data['principal_repaid'] = this.principalRepaid;
    data['maturity_date'] = this.maturityDate;
    data['no_of_units_offered_for_sale'] = this.noOfUnitsOfferedForSale;
    data['expected_sale_price_per_unit'] = this.expectedSalePricePerUnit;
    data['status'] = this.status;
    data['listing_status'] = this.listingStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
