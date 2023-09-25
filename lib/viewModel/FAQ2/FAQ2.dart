import 'dart:async';
import 'package:freeu/Models/FAQ2/Alternative1AngelLearnModel.dart';
import 'package:freeu/Models/FAQ2/Alternative1InfrastructureLearnModel.dart';
import 'package:freeu/Models/FAQ2/Alternative1Model.dart';
import 'package:freeu/Models/FAQ2/Alternative2DebtLearnModel.dart';
import 'package:freeu/Models/FAQ2/Alternative2FundDisLearnModel.dart';
import 'package:freeu/Models/FAQ2/Alternative2Model.dart';
import 'package:freeu/Models/FAQ2/Alternative2PrivateLearnModel.dart';
import 'package:freeu/Models/FAQ2/Alternative2PrivateRealLearn.dart';
import 'package:freeu/Models/FAQ2/Alternative3HedgeLearnModel.dart';
import 'package:freeu/Models/FAQ2/Alternative3Model.dart';
import 'package:freeu/Models/FAQ2/Alternative3PrivPubLearnModel.dart';
import 'package:freeu/Models/FAQ2/AlternativeInvestMainLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalBondsLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalEquitiesLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalEtfsLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalHighyieldLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalInvestmentGradeLearnNodel.dart';
import 'package:freeu/Models/FAQ2/GlobalMutualfundsLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalPrivateFundsLearnModel.dart';
import 'package:freeu/Models/FAQ2/Alternative1VenturecapitalLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalRealLearnAssets.dart/GlobalCommercialLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalRealLearnAssets.dart/GlobalIndustrialLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalRealLearnAssets.dart/GlobalResidentialLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalSovereignBondsLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalVentureCapitalLearnModel.dart';
import 'package:freeu/Models/FAQ2/GlobalhedgefundsleranModel.dart';
import 'package:freeu/Models/FAQ2/InidianRealLearnAssets/IndianCommercialLearnModel.dart';
import 'package:freeu/Models/FAQ2/InidianRealLearnAssets/IndianindustrialLearnModel.dart';
import 'package:freeu/Models/FAQ2/InidianRealLearnAssets/IndinaResidentialLearnModel.dart';
import 'package:freeu/Models/FAQ2/LeasebasefinanceModel.dart';
import 'package:freeu/Models/FAQ2/ReitslearnModel.dart';
import 'package:freeu/Models/FAQ2/VentureDebtLearnModel.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

Alternative3Model? alternative3;
Alternative2Model? alternative2;
Alternative1Model? alternative1;
LeasebasefinacingModel? leasebasefinance;
ReitsModel? reitslearn;
GlobalhedgefundsLearnModel? globalhedgefunds;
GlobalPrivateEquityLearnModel? globalprivateequityfunds;
Alternative1VenturecapitalLearnModel? alternative1venturecapitalfunds;
GlobalETFsLearnModel? globaletfslearnmore;
GlobalEquitiesLearnModel? globalequitieslearnmore;
GlobalMutualFundsLearnModel? globalmutualfunds;
GlobalBondsLearnModel? globalbondsmore;
AlternativeInvestmentLearnModel? alternativeinvestmentmainlearn;
VentureDebtLearnModel? venturedebtlearnmore;
Alternative1InfrastructurelLearnModel? alternati1infrastructurefunds;
Alternative1AngelLearnModel? alternati1angelfunds;
GlobalVenturecapitalLearnModel? globalventurecapitalmore;
Alternative2PrivateLearnModel? alternati2privateequifunds;
Alternative2DebtLearnModel? alternati2debtfunds;
Alternative2FundDistressLearnModel? alternati2fundsdistress;
Alternative2PrivateRealEstateLearnModel? alternati2privaterealfundlearn;
Alternative3HedgeLearnModel? alternati3hedgelearn;
Alternative3PrivaPubEquiLearnModel? alternati3privapubequilearn;
GlobalSovereignBondsLearnModel? globalsovereignlearn;
GlobalInvestmentGradeLearnModel? globalinvestmentbondslearn;
GlobalHighyieldLearnModel? globalhighyieldlearn;
IndianResidentialLearnModel? indianresident;
IndianCommercialLearnModel? indiancommercial;
IndianIndustrialLearnModel? indianindustrial;
GlobalResidentialLearnModel? globalresident;
GlobalCommerciallLearnModel? globalcommercial;
GlobalIndustrialLearnModel? globalindustrial;





class FAQ2 {
  Future<ResponseData<dynamic>> Alternative3() async {
    final response = await NetworkApi().getApi(ApiUrls.Alternative3);
    if (response.status == ResponseStatus.SUCCESS) {
      alternative3 = Alternative3Model.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Alternative2() async {
    final response = await NetworkApi().getApi(ApiUrls.Alternative2);
    if (response.status == ResponseStatus.SUCCESS) {
      alternative2 = Alternative2Model.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Alternative1() async {
    final response = await NetworkApi().getApi(ApiUrls.Alternative1);
    if (response.status == ResponseStatus.SUCCESS) {
      alternative1 = Alternative1Model.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Leasebased() async {
    final response = await NetworkApi().getApi(ApiUrls.Leasebasedfinancing);
    if (response.status == ResponseStatus.SUCCESS) {
      leasebasefinance = LeasebasefinacingModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> REITslearn() async {
    final response = await NetworkApi().getApi(ApiUrls.Reitslearnmore);
    if (response.status == ResponseStatus.SUCCESS) {
      reitslearn = ReitsModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> GlobalHedgefunds() async {
    final response = await NetworkApi().getApi(ApiUrls.Globalhedgefunds);
    if (response.status == ResponseStatus.SUCCESS) {
      globalhedgefunds = GlobalhedgefundsLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> GlobalPrivateEquiFunds() async {
    final response = await NetworkApi().getApi(ApiUrls.Globalprivatefunds);
    if (response.status == ResponseStatus.SUCCESS) {
      globalprivateequityfunds =
          GlobalPrivateEquityLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> AlternativeVenturecapitalFunds() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Alternative1venturecapifunds);
    if (response.status == ResponseStatus.SUCCESS) {
      alternative1venturecapitalfunds =
          Alternative1VenturecapitalLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> GlobalETFsFunds() async {
    final response = await NetworkApi().getApi(ApiUrls.Globaletfsslearnmore);
    if (response.status == ResponseStatus.SUCCESS) {
      globaletfslearnmore = GlobalETFsLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> GlobalEquities() async {
    final response = await NetworkApi().getApi(ApiUrls.Globalequitieslearnmore);
    if (response.status == ResponseStatus.SUCCESS) {
      globalequitieslearnmore =
          GlobalEquitiesLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> GlobalMutualFundsLearn() async {
    final response = await NetworkApi().getApi(ApiUrls.Globalmutualfunds);
    if (response.status == ResponseStatus.SUCCESS) {
      globalmutualfunds = GlobalMutualFundsLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> GlobalBondsLearnmore() async {
    final response = await NetworkApi().getApi(ApiUrls.Globalbondslearn);
    if (response.status == ResponseStatus.SUCCESS) {
      globalbondsmore = GlobalBondsLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> AlternativeInvestLearnmore() async {
    final response = await NetworkApi().getApi(ApiUrls.AlternativeInvestmain);
    if (response.status == ResponseStatus.SUCCESS) {
      alternativeinvestmentmainlearn =
          AlternativeInvestmentLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> VentureDebtLearnmore() async {
    final response = await NetworkApi().getApi(ApiUrls.Venturedebtlearn);
    if (response.status == ResponseStatus.SUCCESS) {
      venturedebtlearnmore = VentureDebtLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Alternative1Infrastructure() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Alternative1Infrastructurefund);
    if (response.status == ResponseStatus.SUCCESS) {
      alternati1infrastructurefunds =
          Alternative1InfrastructurelLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Alternative1Angelfund() async {
    final response = await NetworkApi().getApi(ApiUrls.Alternative1Angelfund);
    if (response.status == ResponseStatus.SUCCESS) {
      alternati1angelfunds =
          Alternative1AngelLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Globalventurecapitallearnmore() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Globalventurecapitalfunds);
    if (response.status == ResponseStatus.SUCCESS) {
      globalventurecapitalmore =
          GlobalVenturecapitalLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Alternative2PrivateEquity() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Alternative2PrivateEquityfund);
    if (response.status == ResponseStatus.SUCCESS) {
      alternati2privateequifunds =
          Alternative2PrivateLearnModel.fromJson(response.data);
    }
    return response;
  }

   Future<ResponseData<dynamic>> Alternative2DebtFund() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Alternative2Debtfund);
    if (response.status == ResponseStatus.SUCCESS) {
      alternati2debtfunds =
          Alternative2DebtLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Alternative2Funddistressedasset() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Alternative2Funddistressed);
    if (response.status == ResponseStatus.SUCCESS) {
      alternati2fundsdistress =
          Alternative2FundDistressLearnModel.fromJson(response.data);
    }
    return response;
  }

   Future<ResponseData<dynamic>> Alternative2PrivateRealEstateFund() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Alternative2PrivateRealEstLearn);
    if (response.status == ResponseStatus.SUCCESS) {
      alternati2privaterealfundlearn =
          Alternative2PrivateRealEstateLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> Alternative3HedgeFund() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Alternative3hedgefunds);
    if (response.status == ResponseStatus.SUCCESS) {
      alternati3hedgelearn =
          Alternative3HedgeLearnModel.fromJson(response.data);
    }
    return response;
  }

   Future<ResponseData<dynamic>> Alternative3PrivInveinPublicEquiFund() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Alternative3privatinvepublicequifunds);
    if (response.status == ResponseStatus.SUCCESS) {
      alternati3privapubequilearn =
          Alternative3PrivaPubEquiLearnModel.fromJson(response.data);
    }
    return response;
  }

   Future<ResponseData<dynamic>> GlobalSovereignbondslearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Globalsovereignbonds);
    if (response.status == ResponseStatus.SUCCESS) {
      globalsovereignlearn =
          GlobalSovereignBondsLearnModel.fromJson(response.data);
    }
    return response;
  }

  
   Future<ResponseData<dynamic>> GlobalInvestmentgradelearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Globalinvestmentgrade);
    if (response.status == ResponseStatus.SUCCESS) {
      globalinvestmentbondslearn =
          GlobalInvestmentGradeLearnModel.fromJson(response.data);
    }
    return response;
  }

     Future<ResponseData<dynamic>> Globalhighyieldlearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Globalhighyieldlearnmore);
    if (response.status == ResponseStatus.SUCCESS) {
      globalhighyieldlearn =
          GlobalHighyieldLearnModel.fromJson(response.data);
    }
    return response;
  }

     Future<ResponseData<dynamic>> IndianResidentialLearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Indianresidentlearn);
    if (response.status == ResponseStatus.SUCCESS) {
      indianresident =
          IndianResidentialLearnModel.fromJson(response.data);
    }
    return response;
  }
  
     Future<ResponseData<dynamic>> IndianCommercialLearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Indiancommerciallearn);
    if (response.status == ResponseStatus.SUCCESS) {
      indiancommercial =
          IndianCommercialLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> IndianIndustrialLearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Indianindustriallearn);
    if (response.status == ResponseStatus.SUCCESS) {
      indianindustrial =
          IndianIndustrialLearnModel.fromJson(response.data);
    }
    return response;
  }

    Future<ResponseData<dynamic>> GlobalResidentialLearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Globalresidentlearn);
    if (response.status == ResponseStatus.SUCCESS) {
      globalresident =
          GlobalResidentialLearnModel.fromJson(response.data);
    }
    return response;
  }

   Future<ResponseData<dynamic>> GlobalCommercialLearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Globalcommerciallearn);
    if (response.status == ResponseStatus.SUCCESS) {
      globalcommercial =
          GlobalCommerciallLearnModel.fromJson(response.data);
    }
    return response;
  }

  Future<ResponseData<dynamic>> GlobalIndustrialLearn() async {
    final response =
        await NetworkApi().getApi(ApiUrls.Globalindustriallearn);
    if (response.status == ResponseStatus.SUCCESS) {
      globalindustrial =
          GlobalIndustrialLearnModel.fromJson(response.data);
    }
    return response;
  }
}
