class ChatGetmessagesModel {
  List<Data>? data;

  ChatGetmessagesModel({this.data});

  ChatGetmessagesModel.fromJson(Map<String, dynamic> json) {
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
  String? message;
  String? file;
  String? by;
  String? profileImage;

  Data({this.message, this.file, this.by, this.profileImage});

  Data.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    file = json['file'];
    by = json['by'];
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['file'] = this.file;
    data['by'] = this.by;
    data['profile_image'] = this.profileImage;
    return data;
  }
}
