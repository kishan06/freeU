class PeerDetailsModel {
  Data? data;

  PeerDetailsModel({this.data});

  PeerDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? scheme;
  String? slug;
  String? tenure;
  String? minimumInvestment;
  String? maximumInvestment;
  String? returns;
  String? minimumInvestmentInInt;

  Data(
      {this.id,
      this.productsId,
      this.scheme,
      this.slug,
      this.tenure,
      this.minimumInvestment,
      this.maximumInvestment,
      this.returns,
      this.minimumInvestmentInInt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    scheme = json['scheme'];
    slug = json['slug'];
    tenure = json['tenure'];
    minimumInvestment = json['minimum_investment'];
    maximumInvestment = json['maximum_investment'];
    returns = json['returns'];
    minimumInvestmentInInt = json['minimum_investment_in_int'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['scheme'] = this.scheme;
    data['slug'] = this.slug;
    data['tenure'] = this.tenure;
    data['minimum_investment'] = this.minimumInvestment;
    data['maximum_investment'] = this.maximumInvestment;
    data['returns'] = this.returns;
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    return data;
  }
}
