class NonfeaturedinvestmentModel {
  List<Data>? data;

  NonfeaturedinvestmentModel({this.data});

  NonfeaturedinvestmentModel.fromJson(Map<String, dynamic> json) {
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
  List<FractionalRealEstate>? fractionalRealEstate;
  List<AlternativeInvestmentFund>? alternativeInvestmentFund;
  List<OtherProducts>? otherProducts;

  Data(
      {this.fractionalRealEstate,
      this.alternativeInvestmentFund,
      this.otherProducts});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['fractional-real-estate'] != null) {
      fractionalRealEstate = <FractionalRealEstate>[];
      json['fractional-real-estate'].forEach((v) {
        fractionalRealEstate!.add(new FractionalRealEstate.fromJson(v));
      });
    }
    if (json['alternative-investment-fund'] != null) {
      alternativeInvestmentFund = <AlternativeInvestmentFund>[];
      json['alternative-investment-fund'].forEach((v) {
        alternativeInvestmentFund!
            .add(new AlternativeInvestmentFund.fromJson(v));
      });
    }
    if (json['other-products'] != null) {
      otherProducts = <OtherProducts>[];
      json['other-products'].forEach((v) {
        otherProducts!.add(new OtherProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fractionalRealEstate != null) {
      data['fractional-real-estate'] =
          this.fractionalRealEstate!.map((v) => v.toJson()).toList();
    }
    if (this.alternativeInvestmentFund != null) {
      data['alternative-investment-fund'] =
          this.alternativeInvestmentFund!.map((v) => v.toJson()).toList();
    }
    if (this.otherProducts != null) {
      data['other-products'] =
          this.otherProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FractionalRealEstate {
  String? propertyName;
  String? assetType;
  String? fractionalRealEstatePlatform;
  String? propertyAddress;
  String? expectedSellingPrice;
  String? annualRentalYieldEarned;
  String? slug;

  FractionalRealEstate(
      {this.propertyName,
      this.assetType,
      this.fractionalRealEstatePlatform,
      this.propertyAddress,
      this.expectedSellingPrice,
      this.annualRentalYieldEarned,
      this.slug});

  FractionalRealEstate.fromJson(Map<String, dynamic> json) {
    propertyName = json['property_name'];
    assetType = json['asset_type'];
    fractionalRealEstatePlatform = json['fractional_real_estate_platform'];
    propertyAddress = json['property_address'];
    expectedSellingPrice = json['expected_selling_price'];
    annualRentalYieldEarned = json['annual_rental_yield_earned'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['property_name'] = this.propertyName;
    data['asset_type'] = this.assetType;
    data['fractional_real_estate_platform'] = this.fractionalRealEstatePlatform;
    data['property_address'] = this.propertyAddress;
    data['expected_selling_price'] = this.expectedSellingPrice;
    data['annual_rental_yield_earned'] = this.annualRentalYieldEarned;
    data['slug'] = this.slug;
    return data;
  }
}

class AlternativeInvestmentFund {
  String? nameOfTheAifFund;
  String? fundCategory;
  String? typeOfFund;
  int? expectedSalePerUnit;
  int? noOfUnitsYouWishToSell;
  String? slug;

  AlternativeInvestmentFund(
      {this.nameOfTheAifFund,
      this.fundCategory,
      this.typeOfFund,
      this.expectedSalePerUnit,
      this.noOfUnitsYouWishToSell,
      this.slug});

  AlternativeInvestmentFund.fromJson(Map<String, dynamic> json) {
    nameOfTheAifFund = json['name_of_the_aif_fund'];
    fundCategory = json['fund_category'];
    typeOfFund = json['type_of_fund'];
    expectedSalePerUnit = json['expected_sale_per_unit'];
    noOfUnitsYouWishToSell = json['no_of_units_you_wish_to_sell'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_of_the_aif_fund'] = this.nameOfTheAifFund;
    data['fund_category'] = this.fundCategory;
    data['type_of_fund'] = this.typeOfFund;
    data['expected_sale_per_unit'] = this.expectedSalePerUnit;
    data['no_of_units_you_wish_to_sell'] = this.noOfUnitsYouWishToSell;
    data['slug'] = this.slug;
    return data;
  }
}

class OtherProducts {
  String? securityName;
  String? productCategory;
  String? instrumentIssuer;
  int? noOfUnitsOfferedForSale;
  int? expectedSalePricePerUnit;
  String? slug;

  OtherProducts(
      {this.securityName,
      this.productCategory,
      this.instrumentIssuer,
      this.noOfUnitsOfferedForSale,
      this.expectedSalePricePerUnit,
      this.slug});

  OtherProducts.fromJson(Map<String, dynamic> json) {
    securityName = json['security_name'];
    productCategory = json['product_category'];
    instrumentIssuer = json['instrument_issuer'];
    noOfUnitsOfferedForSale = json['no_of_units_offered_for_sale'];
    expectedSalePricePerUnit = json['expected_sale_price_per_unit'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['security_name'] = this.securityName;
    data['product_category'] = this.productCategory;
    data['instrument_issuer'] = this.instrumentIssuer;
    data['no_of_units_offered_for_sale'] = this.noOfUnitsOfferedForSale;
    data['expected_sale_price_per_unit'] = this.expectedSalePricePerUnit;
    data['slug'] = this.slug;
    return data;
  }
}
