class InvestmentSummaryModel {
  Data? data;

  InvestmentSummaryModel({this.data});

  InvestmentSummaryModel.fromJson(Map<String, dynamic> json) {
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
  String? totalInvestmentTillDate;
  String? activeInvestment;
  String? reedemedInvestment;

  Data(
      {this.totalInvestmentTillDate,
      this.activeInvestment,
      this.reedemedInvestment});

  Data.fromJson(Map<String, dynamic> json) {
    totalInvestmentTillDate = json['totalInvestmentTillDate'];
    activeInvestment = json['activeInvestment'];
    reedemedInvestment = json['reedemedInvestment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalInvestmentTillDate'] = this.totalInvestmentTillDate;
    data['activeInvestment'] = this.activeInvestment;
    data['reedemedInvestment'] = this.reedemedInvestment;
    return data;
  }
}
