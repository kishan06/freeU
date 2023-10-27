class AlternativeInvestwatchlistModel {
  List<Data>? data;

  AlternativeInvestwatchlistModel({this.data});

  AlternativeInvestwatchlistModel.fromJson(Map<String, dynamic> json) {
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
  String? nameOfTheAifFund;
  int? fundCategory;
  String? fundStrategy;
  String? typeOfFund;
  String? totalCapitalCommitment;
  String? uncalledCapitalCommitment;

  Data(
      {this.nameOfTheAifFund,
      this.fundCategory,
      this.fundStrategy,
      this.typeOfFund,
      this.totalCapitalCommitment,
      this.uncalledCapitalCommitment});

  Data.fromJson(Map<String, dynamic> json) {
    nameOfTheAifFund = json['name_of_the_aif_fund'];
    fundCategory = json['fund_category'];
    fundStrategy = json['fund_strategy'];
    typeOfFund = json['type_of_fund'];
    totalCapitalCommitment = json['total_capital_commitment'];
    uncalledCapitalCommitment = json['uncalled_capital_commitment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_of_the_aif_fund'] = this.nameOfTheAifFund;
    data['fund_category'] = this.fundCategory;
    data['fund_strategy'] = this.fundStrategy;
    data['type_of_fund'] = this.typeOfFund;
    data['total_capital_commitment'] = this.totalCapitalCommitment;
    data['uncalled_capital_commitment'] = this.uncalledCapitalCommitment;
    return data;
  }
}
