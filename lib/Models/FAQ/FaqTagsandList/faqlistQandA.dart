class FaqlistModel {
  String? status;
  List<Data>? data;

  FaqlistModel({this.status, this.data});

  FaqlistModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
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
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? faqQuestion;
  String? faqAnswer;

  Data({this.id, this.faqQuestion, this.faqAnswer});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    faqQuestion = json['faq_question'];
    faqAnswer = json['faq_answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['faq_question'] = this.faqQuestion;
    data['faq_answer'] = this.faqAnswer;
    return data;
  }
}
