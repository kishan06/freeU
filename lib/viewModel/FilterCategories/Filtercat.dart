// import 'dart:async';

// import 'package:freeu/Models/FilterModel/filtermodel.dart';
// import 'package:freeu/common/api_urls.dart';
// import 'package:freeu/controllers/base_manager.dart';
// import 'package:freeu/controllers/network_api.dart';

// FilterResponse? filterobj;

// class Filtercategories{
  
//   // final StreamController<FilterResponse> _filterStreamController = StreamController<FilterResponse>.broadcast();

//   // Stream<FilterResponse> get filterStream => _filterStreamController.stream;

//   // void dispose() {
//   //   _filterStreamController.close();
//   // }
  

//   //  Future<ResponseData<dynamic>> Postfilter(updata) async {
//   //   final response =
//   //       await NetworkApi().postApi(url: ApiUrls.Postfiltercategories, data: updata);
//   //         final responseData = response.data;
          

//   //   final filterResponse = FilterResponse(
//   //     indianFinancialAssets: responseData['indian-financial-assets'] ?? false,
//   //     indianRealAssets: responseData['indian-real-assets'] ?? false,
//   //     globalFinancialAssets: responseData['global-financial-assets'] ?? false,
//   //     globalRealAssets: responseData['global-real-assets'] ?? false,
//   //   );
//   //       _filterStreamController.add(filterResponse);
//   //   return response;
    
//   // }

//      Future<ResponseData<dynamic>> Postfilter(updata) async {
//     final response =
//         await NetworkApi().postfilterApi(url: ApiUrls.Postfiltercategories, data: updata);          
//         if(response.status == ResponseStatus.SUCCESS){
//           filterobj = FilterResponse.fromJson(response.data);
//         }
//     return response;
    
//   }


// }