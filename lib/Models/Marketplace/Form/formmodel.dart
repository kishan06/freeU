class GetFormmodel {
  Data? data;

  GetFormmodel({this.data});

  GetFormmodel.fromJson(Map<String, dynamic> json) {
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
  String? table;
  int? id;
  User? user;

  Data({this.table, this.id, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    table = json['table'];
    id = json['id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['table'] = this.table;
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? name;
  String? contactNumber;
  String? email;

  User({this.name, this.contactNumber, this.email});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contactNumber = json['contact_number'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['contact_number'] = this.contactNumber;
    data['email'] = this.email;
    return data;
  }
}
