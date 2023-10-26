class GetfractionallearnmoreModel {
  bool? invested;
  String? type;
  Data? data;

  GetfractionallearnmoreModel({this.invested, this.type, this.data});

  GetfractionallearnmoreModel.fromJson(Map<String, dynamic> json) {
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
  String? propertyName;
  String? slug;
  String? propertyAddress;
  String? propertyGrade;
  String? assetType;
  String? annualRentalYieldEarned;
  String? rentalEscalation;
  String? fractionalRealEstatePlatform;
  String? dateOfInvestment;
  String? originalAmountInvested;
  String? currentMarketValueOfTheProperty;
  String? expectedSellingPrice;
  String? status;
  String? listingStatus;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.sellerFormsId,
      this.propertyName,
      this.slug,
      this.propertyAddress,
      this.propertyGrade,
      this.assetType,
      this.annualRentalYieldEarned,
      this.rentalEscalation,
      this.fractionalRealEstatePlatform,
      this.dateOfInvestment,
      this.originalAmountInvested,
      this.currentMarketValueOfTheProperty,
      this.expectedSellingPrice,
      this.status,
      this.listingStatus,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sellerFormsId = json['seller_forms_id'];
    propertyName = json['property_name'];
    slug = json['slug'];
    propertyAddress = json['property_address'];
    propertyGrade = json['property_grade'];
    assetType = json['asset_type'];
    annualRentalYieldEarned = json['annual_rental_yield_earned'];
    rentalEscalation = json['rental_escalation'];
    fractionalRealEstatePlatform = json['fractional_real_estate_platform'];
    dateOfInvestment = json['date_of_investment'];
    originalAmountInvested = json['original_amount_invested'];
    currentMarketValueOfTheProperty =
        json['current_market_value_of_the_property'];
    expectedSellingPrice = json['expected_selling_price'];
    status = json['status'];
    listingStatus = json['listing_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['seller_forms_id'] = this.sellerFormsId;
    data['property_name'] = this.propertyName;
    data['slug'] = this.slug;
    data['property_address'] = this.propertyAddress;
    data['property_grade'] = this.propertyGrade;
    data['asset_type'] = this.assetType;
    data['annual_rental_yield_earned'] = this.annualRentalYieldEarned;
    data['rental_escalation'] = this.rentalEscalation;
    data['fractional_real_estate_platform'] = this.fractionalRealEstatePlatform;
    data['date_of_investment'] = this.dateOfInvestment;
    data['original_amount_invested'] = this.originalAmountInvested;
    data['current_market_value_of_the_property'] =
        this.currentMarketValueOfTheProperty;
    data['expected_selling_price'] = this.expectedSellingPrice;
    data['status'] = this.status;
    data['listing_status'] = this.listingStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
