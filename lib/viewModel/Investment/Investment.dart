import 'dart:convert';
import 'dart:developer';

import 'package:freeu/Models/DetailsIndustrialModel.dart';
import 'package:freeu/Models/Investment/AlternativeInvestmentFundModel.dart';
import 'package:freeu/Models/Investment/CurrentInvestmentModel.dart';
import 'package:freeu/Models/Investment/InvestmentSummaryModel.dart';
import 'package:freeu/Models/Investment/PeerToPeerLendingModel.dart';
import 'package:freeu/Models/Investment/RedeemInvestmentModel.dart';
import 'package:freeu/Models/LeaseFinancingDetails.dart';
import 'package:freeu/common/api_urls.dart';
import 'package:freeu/controllers/base_manager.dart';
import 'package:freeu/controllers/network_api.dart';

import '../../HomePage/Investments/InvoiceDiscountingModel.dart';
import '../../Models/Investment/FractionalRealEstateModel.dart';

InvestmentSummaryModel? investmentSummary;
RedeemInvestmentModel? redeemsummary;
CurrentInvestmentModel? currentsummary;
AlternativeInvestmentFundModel? alternativeInvestmentFundModel;
List<String> alternativeInvestmentFundData = [];

FractionalRealEstateModel? fractionalRealEstateModel;
List<String> fractionalRealEstateData = [];

PeerToPeerLendingModel? peerToPeerLendingModel;
List<String> peerToPeerData = [];

InvoiceDiscountingModel? invoiceDiscountingModel;
List<String> invoiceDiscountingData = [];

class Investment {
  Investment();

  Future<ResponseData<dynamic>> InvestmentDetailsAPI(
    String routeId,
    String categories,
  ) async {
    if (categories == "Alternative Investment Fund") {
      alternativeInvestmentFundData.clear();
      alternativeInvestmentFundData.add("");
      alternativeInvestmentFundData.add("");
    } else if (categories == "Fractional Real Estate") {
      fractionalRealEstateData.clear();
      fractionalRealEstateData.add("");
      fractionalRealEstateData.add("");
      fractionalRealEstateData.add("");
      fractionalRealEstateData.add("");
    } else if (categories == "Peer To Peer Lending" ||
        categories == "Liquiloans" ||
        categories == "Faircent" ||
        categories == "Finance Peer") {
      peerToPeerData.clear();
      peerToPeerData.add("");
      peerToPeerData.add("");
    } else if (categories == "Indian Financial Assets" ||
        categories == "Invoice Discounting" ||
        categories == "Clean and green asset" ||
        categories == "Venture Debt" ||
        categories == "High Yield Finance" ||
        categories == "Securitized Debt Instrument" ||
        categories == "Lease Based Financing" ||
        categories == "Revenue Based Financing") {
      invoiceDiscountingData.clear();
      invoiceDiscountingData.add("");
      invoiceDiscountingData.add("");
    }

    final response =
        await NetworkApi().getApi(ApiUrls.investmentDetails + "/${routeId}");

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        if (categories == "Alternative Investment Fund") {
          alternativeInvestmentFundModel =
              AlternativeInvestmentFundModel.fromJson(responseData);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.commitmentAmount!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.contributionAmount!);
          alternativeInvestmentFundData.add(
              alternativeInvestmentFundModel!.data!.contributionCalledAmount!);
          alternativeInvestmentFundData.add(alternativeInvestmentFundModel!
              .data!.contributionUncalledAmount!);
          alternativeInvestmentFundData.add(
              alternativeInvestmentFundModel!.data!.dateOfInitialContribution!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.faceValueNavPerUnit!);
          alternativeInvestmentFundData.add(
              alternativeInvestmentFundModel!.data!.principalCapitalRepaid!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.grossIncome!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.totalFeesPaid!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.netIncome!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.noOfUnitsAlloted!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.noOfUnitsRedeemed!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.currentValuation!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.currentNav!);
          alternativeInvestmentFundData
              .add(alternativeInvestmentFundModel!.data!.noOfUnitsHeld!);
          alternativeInvestmentFundData.add("Link Repayment Schedule");
        } else if (categories == "Fractional Real Estate") {
          fractionalRealEstateModel =
              FractionalRealEstateModel.fromJson(responseData);
          fractionalRealEstateData
              .add(fractionalRealEstateModel!.data!.totalValueOfTheProperty!);
          fractionalRealEstateData
              .add(fractionalRealEstateModel!.data!.investmentValue!);
          fractionalRealEstateData
              .add(fractionalRealEstateModel!.data!.investmentDate!.toString());
          fractionalRealEstateData
              .add(fractionalRealEstateModel!.data!.totalGrossInterest!);
          fractionalRealEstateData.add(fractionalRealEstateModel!.data!.tds!);
          fractionalRealEstateData
              .add(fractionalRealEstateModel!.data!.totalNetInterest!);
          fractionalRealEstateData
              .add(fractionalRealEstateModel!.data!.grossEntryYieldInPct!);
          fractionalRealEstateData
              .add(fractionalRealEstateModel!.data!.targetReturnInPct!);
          fractionalRealEstateData
              .add(fractionalRealEstateModel!.data!.absoluteReturnTillDate!);
          fractionalRealEstateData.add(
              fractionalRealEstateModel!.data!.absoluteReturnTillDateInPct!);
          fractionalRealEstateData.add("Link Repayment Schedule");
        } else if (categories == "Peer To Peer Lending" ||
            categories == "Liquiloans" ||
            categories == "Faircent" ||
            categories == "Finance Peer") {
          peerToPeerLendingModel =
              PeerToPeerLendingModel.fromJson(responseData);
          if (categories == "Faircent") {
            peerToPeerData.add(peerToPeerLendingModel!.data!.totalValue!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.investmentAmount!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.allTimeAmountInvested!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.interestAccrued!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.principalRedemption!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.netInterestRedemption!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.escrowBalance!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.averageRoi!);
          } else if (categories == "Finance Peer") {
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.allTimeInvestmentAdded!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.totalActiveInvestment!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.netExpectedValueAtMaturity!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.netAssetValue!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.amountWithdrawn!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.interestPaidout!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.absoluteReturnInRs!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.absoluteReturnInPct!);
          } else {
            peerToPeerData.add(peerToPeerLendingModel!.data!.totalInvestment!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.principalRedemption!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.interestPaidout!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.netPrincipalInvestment!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.capitalisedInterest!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.accruedInterest!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.portfolioValue!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.absoluteReturnInRs!);
            peerToPeerData
                .add(peerToPeerLendingModel!.data!.absoluteReturnInPct!);
            peerToPeerData.add(peerToPeerLendingModel!.data!.annualisedReturn!);
          }

          peerToPeerData.add("Link Repayment Schedule");
        } else if (categories == "Indian Financial Assets" ||
            categories == "Invoice Discounting" ||
            categories == "Clean and green asset" ||
            categories == "Venture Debt" ||
            categories == "High Yield Finance" ||
            categories == "Securitized Debt Instrument" ||
            categories == "Lease Based Financing" ||
            categories == "Revenue Based Financing") {
          invoiceDiscountingModel =
              InvoiceDiscountingModel.fromJson(responseData);
          invoiceDiscountingData
              .add(invoiceDiscountingModel!.basicDetails!.productName!);
          invoiceDiscountingData
              .add(invoiceDiscountingModel!.basicDetails!.counterParty!);
          invoiceDiscountingData
              .add(invoiceDiscountingModel!.data!.investmentDate.toString());
          invoiceDiscountingData
              .add(invoiceDiscountingModel!.data!.amountInvested.toString());
          invoiceDiscountingData.add(
              invoiceDiscountingModel!.data!.totalGrossRepaidAmount.toString());
          invoiceDiscountingData
              .add(invoiceDiscountingModel!.data!.tenureInDays.toString());
          invoiceDiscountingData.add(invoiceDiscountingModel!
              .data!.principalPaymentFrequency
              .toString());
          invoiceDiscountingData.add(invoiceDiscountingModel!
              .data!.interestPaymentFrequency
              .toString());
          invoiceDiscountingData.add(
              invoiceDiscountingModel!.data!.nextRepaymentDueDate.toString());
          invoiceDiscountingData
              .add(invoiceDiscountingModel!.data!.maturityDate.toString());
          invoiceDiscountingData.add(
              invoiceDiscountingModel!.data!.nextRepaymentAmount.toString());
          invoiceDiscountingData
              .add(invoiceDiscountingModel!.data!.expectedIrr.toString());
          invoiceDiscountingData.add("Link Repayment Schedule");
        }
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

  Future<ResponseData<dynamic>> InvestmentSummaryAPI() async {
    final response = await NetworkApi().getApi(ApiUrls.investmentSummary);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        investmentSummary = InvestmentSummaryModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

  Future<ResponseData<dynamic>> RedeemInvestmentAPI() async {
    final response = await NetworkApi().getApi(ApiUrls.redeeminvestmetDetails);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        redeemsummary = RedeemInvestmentModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }

  Future<ResponseData<dynamic>> CurrentInvestmentAPI() async {
    final response =
        await NetworkApi().getApi(ApiUrls.currentInvestmentDetails);

    if (response.status == ResponseStatus.SUCCESS) {
      Map<String, dynamic> responseData =
          Map<String, dynamic>.from(response.data);
      if (responseData.isNotEmpty) {
        currentsummary = CurrentInvestmentModel.fromJson(responseData);
      } else {
        return ResponseData<dynamic>(
            responseData['message'], ResponseStatus.FAILED);
      }
    }
    return response;
  }
}
