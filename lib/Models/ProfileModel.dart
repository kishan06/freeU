class ProfileModel {
  int? status;
  User? user;

  ProfileModel({this.status, this.user});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? profileImage;
  String? firstName;
  String? lastName;
  String? email;
  String? contactNumber;
  String? emailVerifiedAt;
  String? password;
  int? role;
  String? otp;
  String? expireAt;
  String? lastLogin;
  String? isVerified;
  String? address;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.profileImage,
      this.firstName,
      this.lastName,
      this.email,
      this.contactNumber,
      this.emailVerifiedAt,
      this.password,
      this.role,
      this.otp,
      this.expireAt,
      this.lastLogin,
      this.isVerified,
      this.address,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    profileImage = json['profile_image'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    contactNumber = json['contact_number'];
    emailVerifiedAt = json['email_verified_at'];
    password = json['password'];
    role = json['role'];
    otp = json['otp'];
    expireAt = json['expire_at'];
    lastLogin = json['last_login'];
    isVerified = json['is_verified'];
    address = json['address'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['profile_image'] = this.profileImage;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['contact_number'] = this.contactNumber;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['password'] = this.password;
    data['role'] = this.role;
    data['otp'] = this.otp;
    data['expire_at'] = this.expireAt;
    data['last_login'] = this.lastLogin;
    data['is_verified'] = this.isVerified;
    data['address'] = this.address;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
