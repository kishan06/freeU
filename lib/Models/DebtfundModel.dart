class DebtfundModel {
  List<Data>? data;

  DebtfundModel({this.data});

  DebtfundModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? status;
  String? createdAt;
  AlternativeInvestmentFund? alternativeInvestmentFund;

  Data({this.id, this.status, this.createdAt, this.alternativeInvestmentFund});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    alternativeInvestmentFund = json['alternative_investment_fund'] != null
        ? new AlternativeInvestmentFund.fromJson(
            json['alternative_investment_fund'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.alternativeInvestmentFund != null) {
      data['alternative_investment_fund'] =
          this.alternativeInvestmentFund!.toJson();
    }
    return data;
  }
}

class AlternativeInvestmentFund {
  int? id;
  int? productsId;
  int? companiesId;
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
  String? targetIrr;
  String? managementFeesAndCarry;
  String? hurdleRate;
  String? otherExpenses;
  String? focusedSectorsIndustries;
  String? regionsCovered;
  String? isinCode;
  String? focusedRealEstateSectors;
  String? reraCompliedProperty;
  String? returnOnInvestment;
  String? valuationPerSector;
  String? focusedFunds;
  String? tradingStrategy;
  String? involvedInShortSelling;
  String? minimumInvestment;
  Companies? companies;

  AlternativeInvestmentFund(
      {this.id,
      this.productsId,
      this.companiesId,
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
      this.targetIrr,
      this.managementFeesAndCarry,
      this.hurdleRate,
      this.otherExpenses,
      this.focusedSectorsIndustries,
      this.regionsCovered,
      this.isinCode,
      this.focusedRealEstateSectors,
      this.reraCompliedProperty,
      this.returnOnInvestment,
      this.valuationPerSector,
      this.focusedFunds,
      this.tradingStrategy,
      this.involvedInShortSelling,
      this.minimumInvestment,
      this.companies});

  AlternativeInvestmentFund.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    companiesId = json['companies_id'];
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
    targetIrr = json['target_irr'];
    managementFeesAndCarry = json['management_fees_and_carry'];
    hurdleRate = json['hurdle_rate'];
    otherExpenses = json['other_expenses'];
    focusedSectorsIndustries = json['focused_sectors_industries'];
    regionsCovered = json['regions_covered'];
    isinCode = json['isin_code'];
    focusedRealEstateSectors = json['focused_real_estate_sectors'];
    reraCompliedProperty = json['rera_complied_property'];
    returnOnInvestment = json['return_on_investment'];
    valuationPerSector = json['valuation_per_sector'];
    focusedFunds = json['focused_funds'];
    tradingStrategy = json['trading_strategy'];
    involvedInShortSelling = json['involved_in_short_selling'];
    minimumInvestment = json['minimum_investment'];
    companies = json['companies'] != null
        ? new Companies.fromJson(json['companies'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['companies_id'] = this.companiesId;
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
    data['target_irr'] = this.targetIrr;
    data['management_fees_and_carry'] = this.managementFeesAndCarry;
    data['hurdle_rate'] = this.hurdleRate;
    data['other_expenses'] = this.otherExpenses;
    data['focused_sectors_industries'] = this.focusedSectorsIndustries;
    data['regions_covered'] = this.regionsCovered;
    data['isin_code'] = this.isinCode;
    data['focused_real_estate_sectors'] = this.focusedRealEstateSectors;
    data['rera_complied_property'] = this.reraCompliedProperty;
    data['return_on_investment'] = this.returnOnInvestment;
    data['valuation_per_sector'] = this.valuationPerSector;
    data['focused_funds'] = this.focusedFunds;
    data['trading_strategy'] = this.tradingStrategy;
    data['involved_in_short_selling'] = this.involvedInShortSelling;
    data['minimum_investment'] = this.minimumInvestment;
    if (this.companies != null) {
      data['companies'] = this.companies!.toJson();
    }
    return data;
  }
}

class Companies {
  int? id;
  String? companyName;
  String? companyLogo;
  int? status;

  Companies({this.id, this.companyName, this.companyLogo, this.status});

  Companies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyName = json['company_name'];
    companyLogo = json['company_logo'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_name'] = this.companyName;
    data['company_logo'] = this.companyLogo;
    data['status'] = this.status;
    return data;
  }
}
