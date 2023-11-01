class FilterResponse {
  Data? data;

  FilterResponse({this.data});

  FilterResponse.fromJson(Map<String, dynamic> json) {
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
  bool? indianFinancialAssets;
  bool? indianRealAssets;
  bool? globalFinancialAssets;
  bool? globalRealAssets;

  Data(
      {this.indianFinancialAssets,
      this.indianRealAssets,
      this.globalFinancialAssets,
      this.globalRealAssets});

  Data.fromJson(Map<String, dynamic> json) {
    indianFinancialAssets = json['indian-financial-assets'];
    indianRealAssets = json['indian-real-assets'];
    globalFinancialAssets = json['global-financial-assets'];
    globalRealAssets = json['global-real-assets'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['indian-financial-assets'] = this.indianFinancialAssets;
    data['indian-real-assets'] = this.indianRealAssets;
    data['global-financial-assets'] = this.globalFinancialAssets;
    data['global-real-assets'] = this.globalRealAssets;
    return data;
  }
}
