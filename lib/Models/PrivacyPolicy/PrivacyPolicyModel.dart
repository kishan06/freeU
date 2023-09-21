class PrivacyPolicyModel {
  Data? data;

  PrivacyPolicyModel({this.data});

  PrivacyPolicyModel.fromJson(Map<String, dynamic> json) {
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
  String? type;
  String? privacyContent;

  Data({this.id, this.type, this.privacyContent});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    privacyContent = json['privacyContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['privacyContent'] = this.privacyContent;
    return data;
  }
}
