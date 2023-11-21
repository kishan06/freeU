import 'dart:async';
import 'package:freeu/Models/FAQ/FaqTagsandList/faqlistQandA.dart';
import 'package:freeu/Models/FAQ/FaqTagsandList/faqtagslist.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

FaqTagsModel? faqtaglist;
FaqlistModel? faqlistqa;



class Faqs{
    Future<ResponseData<dynamic>> FaqtagList(
      {required StreamController<FaqTagsModel> streamControl}) async {
    final response = await NetworkApi().getApi(ApiUrls.getfaqsTags);
    if (response.status == ResponseStatus.SUCCESS) {
      faqtaglist = FaqTagsModel.fromJson(response.data);
      if (!streamControl.isClosed) streamControl.sink.add(faqtaglist!);
    }
    return response;
  }


   Future<ResponseData<dynamic>> FaqFilterList(updata,
      {required StreamController<FaqlistModel> streamController}) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.postBlogs, data: updata);

    if (response.status == ResponseStatus.SUCCESS) {
      faqlistqa = FaqlistModel.fromJson(response.data);
      if (!streamController.isClosed) streamController.sink.add(faqlistqa!);
    }
    return response;
  }
}