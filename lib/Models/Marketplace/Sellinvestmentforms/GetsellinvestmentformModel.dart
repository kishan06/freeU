class GetSellFormModel {
  Data? data;

  GetSellFormModel({this.data});

  GetSellFormModel.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? city;
  String? country;
  int? postalCode;
  int? contactNumber;
  String? email;

  Data(
      {this.name,
      this.city,
      this.country,
      this.postalCode,
      this.contactNumber,
      this.email});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    city = json['city'];
    country = json['country'];
    postalCode = json['postal_code'];
    contactNumber = json['contact_number'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['city'] = this.city;
    data['country'] = this.country;
    data['postal_code'] = this.postalCode;
    data['contact_number'] = this.contactNumber;
    data['email'] = this.email;
    return data;
  }
}
