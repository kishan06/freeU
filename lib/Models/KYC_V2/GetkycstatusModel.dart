class GetkycstatusModel {
  Data? data;

  GetkycstatusModel({this.data});

  GetkycstatusModel.fromJson(Map<String, dynamic> json) {
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
  String? kycType;
  String? status;

  Data({this.kycType, this.status});

  Data.fromJson(Map<String, dynamic> json) {
    kycType = json['kyc_type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kyc_type'] = this.kycType;
    data['status'] = this.status;
    return data;
  }
}
