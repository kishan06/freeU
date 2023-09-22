class Alternative1VenturecapitalLearnModel {
  String? status;
  int? code;
  List<Data>? data;

  Alternative1VenturecapitalLearnModel({this.status, this.code, this.data});

  Alternative1VenturecapitalLearnModel.fromJson(Map<String, dynamic> json) {
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
  String? faqQuestion;
  String? faqAnswer;

  Data({this.faqQuestion, this.faqAnswer});

  Data.fromJson(Map<String, dynamic> json) {
    faqQuestion = json['faq_question'];
    faqAnswer = json['faq_answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['faq_question'] = this.faqQuestion;
    data['faq_answer'] = this.faqAnswer;
    return data;
  }
}
