import 'dart:async';
import 'dart:convert';

import 'package:freeu/Models/Insights/BlogsModel.dart';
import 'package:freeu/Models/Insights/TagsModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

BlogsModel? blogs;
TagsModel? tags;

class BlogApis {
  Future<ResponseData<dynamic>> BlogSearchAndFilter(updata,
      {required StreamController<BlogsModel> streamController}) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.getBlogs, data: updata);

    if (response.status == ResponseStatus.SUCCESS) {
      blogs = BlogsModel.fromJson(response.data);
      if (!streamController.isClosed) streamController.sink.add(blogs!);
    }
    return response;
  }

  Future<ResponseData<dynamic>> TagList(
      {required StreamController<TagsModel> streamControl}) async {
    final response = await NetworkApi().getApi(ApiUrls.getByTags);
    if (response.status == ResponseStatus.SUCCESS) {
      tags = TagsModel.fromJson(response.data);
      if (!streamControl.isClosed) streamControl.sink.add(tags!);
    }
    return response;
  }

  Future<ResponseData<dynamic>> SingleBlog(updata) async {
    final response =
        await NetworkApi().postApi(url: ApiUrls.singleBlog, data: updata);
    return response;
  }
}
