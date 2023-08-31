class AngelFundDetailsModel {
  Data? data;

  AngelFundDetailsModel({this.data});

  AngelFundDetailsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? productsId;
  String? fundName;
  String? slug;
  String? registrationNumber;
  String? fundCategory;
  String? fundStructure;
  String? fundStrategy;
  String? fundDomicile;
  String? fundManagerName;
  String? websiteOfTheFund;
  String? fundManagerExperience;
  String? sponsor;
  String? manager;
  String? trustee;
  String? auditor;
  String? valuerTaxAdvisor;
  String? creditRating;
  String? openDate;
  String? firstCloseDate;
  String? finalCloseDate;
  String? tenureFromFinalDate;
  String? commitmentPeriod;
  String? nativeCurrency;
  String? targetCorpus;
  String? investmentManagerContribution;
  String? minimumCapitalCommitment;
  String? intialDrawdown;
  String? acceptingOverseasInvestment;
  String? managementFeesAndCarry;
  String? hurdleRate;
  String? otherExpenses;
  String? focusedSectorsIndustries;

  Data(
      {this.id,
      this.productsId,
      this.fundName,
      this.slug,
      this.registrationNumber,
      this.fundCategory,
      this.fundStructure,
      this.fundStrategy,
      this.fundDomicile,
      this.fundManagerName,
      this.websiteOfTheFund,
      this.fundManagerExperience,
      this.sponsor,
      this.manager,
      this.trustee,
      this.auditor,
      this.valuerTaxAdvisor,
      this.creditRating,
      this.openDate,
      this.firstCloseDate,
      this.finalCloseDate,
      this.tenureFromFinalDate,
      this.commitmentPeriod,
      this.nativeCurrency,
      this.targetCorpus,
      this.investmentManagerContribution,
      this.minimumCapitalCommitment,
      this.intialDrawdown,
      this.acceptingOverseasInvestment,
      this.managementFeesAndCarry,
      this.hurdleRate,
      this.otherExpenses,
      this.focusedSectorsIndustries});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    fundName = json['fund_name'];
    slug = json['slug'];
    registrationNumber = json['registration_number'];
    fundCategory = json['fund_category'];
    fundStructure = json['fund_structure'];
    fundStrategy = json['fund_strategy'];
    fundDomicile = json['fund_domicile'];
    fundManagerName = json['fund_manager_name'];
    websiteOfTheFund = json['website_of_the_fund'];
    fundManagerExperience = json['fund_manager_experience'];
    sponsor = json['sponsor'];
    manager = json['manager'];
    trustee = json['trustee'];
    auditor = json['auditor'];
    valuerTaxAdvisor = json['valuer_tax_advisor'];
    creditRating = json['credit_rating'];
    openDate = json['open_date'];
    firstCloseDate = json['first_close_date'];
    finalCloseDate = json['final_close_date'];
    tenureFromFinalDate = json['tenure_from_final_date'];
    commitmentPeriod = json['commitment_period'];
    nativeCurrency = json['native_currency'];
    targetCorpus = json['target_corpus'];
    investmentManagerContribution = json['investment_manager_contribution'];
    minimumCapitalCommitment = json['minimum_capital_commitment'];
    intialDrawdown = json['intial_drawdown'];
    acceptingOverseasInvestment = json['accepting_overseas_investment'];
    managementFeesAndCarry = json['management_fees_and_carry'];
    hurdleRate = json['hurdle_rate'];
    otherExpenses = json['other_expenses'];
    focusedSectorsIndustries = json['focused_sectors_industries'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['fund_name'] = this.fundName;
    data['slug'] = this.slug;
    data['registration_number'] = this.registrationNumber;
    data['fund_category'] = this.fundCategory;
    data['fund_structure'] = this.fundStructure;
    data['fund_strategy'] = this.fundStrategy;
    data['fund_domicile'] = this.fundDomicile;
    data['fund_manager_name'] = this.fundManagerName;
    data['website_of_the_fund'] = this.websiteOfTheFund;
    data['fund_manager_experience'] = this.fundManagerExperience;
    data['sponsor'] = this.sponsor;
    data['manager'] = this.manager;
    data['trustee'] = this.trustee;
    data['auditor'] = this.auditor;
    data['valuer_tax_advisor'] = this.valuerTaxAdvisor;
    data['credit_rating'] = this.creditRating;
    data['open_date'] = this.openDate;
    data['first_close_date'] = this.firstCloseDate;
    data['final_close_date'] = this.finalCloseDate;
    data['tenure_from_final_date'] = this.tenureFromFinalDate;
    data['commitment_period'] = this.commitmentPeriod;
    data['native_currency'] = this.nativeCurrency;
    data['target_corpus'] = this.targetCorpus;
    data['investment_manager_contribution'] =
        this.investmentManagerContribution;
    data['minimum_capital_commitment'] = this.minimumCapitalCommitment;
    data['intial_drawdown'] = this.intialDrawdown;
    data['accepting_overseas_investment'] = this.acceptingOverseasInvestment;
    data['management_fees_and_carry'] = this.managementFeesAndCarry;
    data['hurdle_rate'] = this.hurdleRate;
    data['other_expenses'] = this.otherExpenses;
    data['focused_sectors_industries'] = this.focusedSectorsIndustries;
    return data;
  }
}
