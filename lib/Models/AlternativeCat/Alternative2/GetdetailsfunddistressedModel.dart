class FundDistressedDetailsModel {
  Data? data;

  FundDistressedDetailsModel({this.data});

  FundDistressedDetailsModel.fromJson(Map<String, dynamic> json) {
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
  Null? isinCode;
  String? fundCategory;
  String? fundStructure;
  String? fundStrategy;
  Null? fundDomicile;
  String? fundManagerName;
  Null? websiteOfTheFund;
  Null? fundManagerExperience;
  Null? sponsor;
  Null? manager;
  Null? trustee;
  Null? auditor;
  Null? valuerTaxAdvisor;
  Null? creditRating;
  Null? openDate;
  Null? firstCloseDate;
  Null? finalCloseDate;
  Null? tenureFromFinalClose;
  String? commitmentPeriod;
  Null? nativeCurrency;
  Null? targetCorpus;
  Null? investmentManagerContribution;
  String? minimumCapitalCommitment;
  Null? intialDrawdown;
  Null? acceptingOverseasInvestment;
  String? targetIrr;
  Null? managementFeesAndCarry;
  Null? hurdleRate;
  Null? otherExpenses;
  Null? focusedSectorsIndustries;

  Data(
      {this.id,
      this.productsId,
      this.fundName,
      this.slug,
      this.isinCode,
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
      this.tenureFromFinalClose,
      this.commitmentPeriod,
      this.nativeCurrency,
      this.targetCorpus,
      this.investmentManagerContribution,
      this.minimumCapitalCommitment,
      this.intialDrawdown,
      this.acceptingOverseasInvestment,
      this.targetIrr,
      this.managementFeesAndCarry,
      this.hurdleRate,
      this.otherExpenses,
      this.focusedSectorsIndustries});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    fundName = json['fund_name'];
    slug = json['slug'];
    isinCode = json['isin_code'];
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
    tenureFromFinalClose = json['tenure_from_final_close'];
    commitmentPeriod = json['commitment_period'];
    nativeCurrency = json['native_currency'];
    targetCorpus = json['target_corpus'];
    investmentManagerContribution = json['investment_manager_contribution'];
    minimumCapitalCommitment = json['minimum_capital_commitment'];
    intialDrawdown = json['intial_drawdown'];
    acceptingOverseasInvestment = json['accepting_overseas_investment'];
    targetIrr = json['target_irr'];
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
    data['isin_code'] = this.isinCode;
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
    data['tenure_from_final_close'] = this.tenureFromFinalClose;
    data['commitment_period'] = this.commitmentPeriod;
    data['native_currency'] = this.nativeCurrency;
    data['target_corpus'] = this.targetCorpus;
    data['investment_manager_contribution'] =
        this.investmentManagerContribution;
    data['minimum_capital_commitment'] = this.minimumCapitalCommitment;
    data['intial_drawdown'] = this.intialDrawdown;
    data['accepting_overseas_investment'] = this.acceptingOverseasInvestment;
    data['target_irr'] = this.targetIrr;
    data['management_fees_and_carry'] = this.managementFeesAndCarry;
    data['hurdle_rate'] = this.hurdleRate;
    data['other_expenses'] = this.otherExpenses;
    data['focused_sectors_industries'] = this.focusedSectorsIndustries;
    return data;
  }
}
