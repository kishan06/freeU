class BlogsModel {
  String? status;
  int? code;
  List<Data>? data;

  BlogsModel({this.status, this.code, this.data});

  BlogsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? blogImage;
  String? blogTitle;
  String? blogDescription;
  String? date;

  Data(
      {this.id,
      this.blogImage,
      this.blogTitle,
      this.blogDescription,
      this.date});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    blogImage = json['blog_image'];
    blogTitle = json['blog_title'];
    blogDescription = json['blog_description'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['blog_image'] = this.blogImage;
    data['blog_title'] = this.blogTitle;
    data['blog_description'] = this.blogDescription;
    data['date'] = this.date;
    return data;
  }
}
