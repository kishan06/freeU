class GetmarketlearnmoreModel {
  bool? invested;
  String? type;
  Data? data;

  GetmarketlearnmoreModel({this.invested, this.type, this.data});

  GetmarketlearnmoreModel.fromJson(Map<String, dynamic> json) {
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
  String? nameOfTheAifFund;
  String? slug;
  String? fundCategory;
  String? fundStructure;
  String? typeOfFund;
  String? fundStrategy;
  String? fundManagerName;
  String? sponsor;
  String? creditRating;
  String? totalCapitalCommitment;
  String? uncalledCapitalCommitment;
  String? dateOfFinalClose;
  String? tenureFromFinalClose;
  String? currentOrLatestNav;
  int? noOfUnitsHeld;
  int? noOfUnitsYouWishToSell;
  String? expectedSalePerUnit;
  String? status;
  String? listingStatus;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.sellerFormsId,
      this.nameOfTheAifFund,
      this.slug,
      this.fundCategory,
      this.fundStructure,
      this.typeOfFund,
      this.fundStrategy,
      this.fundManagerName,
      this.sponsor,
      this.creditRating,
      this.totalCapitalCommitment,
      this.uncalledCapitalCommitment,
      this.dateOfFinalClose,
      this.tenureFromFinalClose,
      this.currentOrLatestNav,
      this.noOfUnitsHeld,
      this.noOfUnitsYouWishToSell,
      this.expectedSalePerUnit,
      this.status,
      this.listingStatus,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sellerFormsId = json['seller_forms_id'];
    nameOfTheAifFund = json['name_of_the_aif_fund'];
    slug = json['slug'];
    fundCategory = json['fund_category'];
    fundStructure = json['fund_structure'];
    typeOfFund = json['type_of_fund'];
    fundStrategy = json['fund_strategy'];
    fundManagerName = json['fund_manager_name'];
    sponsor = json['sponsor'];
    creditRating = json['credit_rating'];
    totalCapitalCommitment = json['total_capital_commitment'];
    uncalledCapitalCommitment = json['uncalled_capital_commitment'];
    dateOfFinalClose = json['date_of_final_close'];
    tenureFromFinalClose = json['tenure_from_final_close'];
    currentOrLatestNav = json['current_or_latest_nav'];
    noOfUnitsHeld = json['no_of_units_held'];
    noOfUnitsYouWishToSell = json['no_of_units_you_wish_to_sell'];
    expectedSalePerUnit = json['expected_sale_per_unit'];
    status = json['status'];
    listingStatus = json['listing_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['seller_forms_id'] = this.sellerFormsId;
    data['name_of_the_aif_fund'] = this.nameOfTheAifFund;
    data['slug'] = this.slug;
    data['fund_category'] = this.fundCategory;
    data['fund_structure'] = this.fundStructure;
    data['type_of_fund'] = this.typeOfFund;
    data['fund_strategy'] = this.fundStrategy;
    data['fund_manager_name'] = this.fundManagerName;
    data['sponsor'] = this.sponsor;
    data['credit_rating'] = this.creditRating;
    data['total_capital_commitment'] = this.totalCapitalCommitment;
    data['uncalled_capital_commitment'] = this.uncalledCapitalCommitment;
    data['date_of_final_close'] = this.dateOfFinalClose;
    data['tenure_from_final_close'] = this.tenureFromFinalClose;
    data['current_or_latest_nav'] = this.currentOrLatestNav;
    data['no_of_units_held'] = this.noOfUnitsHeld;
    data['no_of_units_you_wish_to_sell'] = this.noOfUnitsYouWishToSell;
    data['expected_sale_per_unit'] = this.expectedSalePerUnit;
    data['status'] = this.status;
    data['listing_status'] = this.listingStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
