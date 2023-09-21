class HighYieldModel {
  String? status;
  int? code;
  List<Data>? data;

  HighYieldModel({this.status, this.code, this.data});

  HighYieldModel.fromJson(Map<String, dynamic> json) {
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
  int? tagId;
  String? faqQuestion;
  String? faqAnswer;
  String? faqPage;
  int? isActive;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;

  Data(
      {this.id,
      this.tagId,
      this.faqQuestion,
      this.faqAnswer,
      this.faqPage,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tagId = json['tag_id'];
    faqQuestion = json['faq_question'];
    faqAnswer = json['faq_answer'];
    faqPage = json['faq_page'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tag_id'] = this.tagId;
    data['faq_question'] = this.faqQuestion;
    data['faq_answer'] = this.faqAnswer;
    data['faq_page'] = this.faqPage;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
