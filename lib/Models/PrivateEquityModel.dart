class PrivateEquityModel {
  PrivateEquityModel({
    required this.data,
  });
  late final List<Data> data;
  
  PrivateEquityModel.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.status,
    required this.createdAt,
    required this.alternativeInvestmentFund,
  });
  late final int id;
  late final int status;
  late final String createdAt;
  late final AlternativeInvestmentFund alternativeInvestmentFund;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    alternativeInvestmentFund = AlternativeInvestmentFund.fromJson(json['alternative_investment_fund']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['status'] = status;
    _data['created_at'] = createdAt;
    _data['alternative_investment_fund'] = alternativeInvestmentFund.toJson();
    return _data;
  }
}

class AlternativeInvestmentFund {
  AlternativeInvestmentFund({
    required this.id,
    required this.productsId,
     this.companiesId,
    required this.fundName,
    required this.slug,
     this.registrationNumber,
    required this.fundCategory,
    required this.fundStructure,
    required this.fundStrategy,
     this.fundDomicile,
    required this.fundManagerName,
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
    required this.commitmentPeriod,
     this.nativeCurrency,
     this.targetCorpus,
    required this.investmentManagerContribution,
    required this.minimumCapitalCommitment,
     this.intialDrawdown,
     this.acceptingOverseasInvestment,
     this.targetIrr,
    required this.managementFeesAndCarry,
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
     this.companies,
  });
  late final int id;
  late final int productsId;
  late final Null companiesId;
  late final String fundName;
  late final String slug;
  late final String? registrationNumber;
  late final String fundCategory;
  late final String fundStructure;
  late final String fundStrategy;
  late final String? fundDomicile;
  late final String fundManagerName;
  late final Null websiteOfTheFund;
  late final String? fundManagerExperience;
  late final Null sponsor;
  late final String? manager;
  late final Null trustee;
  late final Null auditor;
  late final Null valuerTaxAdvisor;
  late final Null creditRating;
  late final Null openDate;
  late final String? firstCloseDate;
  late final String? finalCloseDate;
  late final String? tenureFromFinalDate;
  late final String commitmentPeriod;
  late final String? nativeCurrency;
  late final String? targetCorpus;
  late final String investmentManagerContribution;
  late final String minimumCapitalCommitment;
  late final Null intialDrawdown;
  late final Null acceptingOverseasInvestment;
  late final Null targetIrr;
  late final String managementFeesAndCarry;
  late final String? hurdleRate;
  late final Null otherExpenses;
  late final String? focusedSectorsIndustries;
  late final Null regionsCovered;
  late final Null isinCode;
  late final Null focusedRealEstateSectors;
  late final Null reraCompliedProperty;
  late final Null returnOnInvestment;
  late final Null valuationPerSector;
  late final Null focusedFunds;
  late final Null tradingStrategy;
  late final Null involvedInShortSelling;
  late final Null minimumInvestment;
  late final Null companies;
  
  AlternativeInvestmentFund.fromJson(Map<String, dynamic> json){
    id = json['id'];
    productsId = json['products_id'];
    companiesId = null;
    fundName = json['fund_name'];
    slug = json['slug'];
    registrationNumber = null;
    fundCategory = json['fund_category'];
    fundStructure = json['fund_structure'];
    fundStrategy = json['fund_strategy'];
    fundDomicile = null;
    fundManagerName = json['fund_manager_name'];
    websiteOfTheFund = null;
    fundManagerExperience = null;
    sponsor = null;
    manager = null;
    trustee = null;
    auditor = null;
    valuerTaxAdvisor = null;
    creditRating = null;
    openDate = null;
    firstCloseDate = null;
    finalCloseDate = null;
    tenureFromFinalDate = null;
    commitmentPeriod = json['commitment_period'];
    nativeCurrency = null;
    targetCorpus = null;
    investmentManagerContribution = json['investment_manager_contribution'];
    minimumCapitalCommitment = json['minimum_capital_commitment'];
    intialDrawdown = null;
    acceptingOverseasInvestment = null;
    targetIrr = null;
    managementFeesAndCarry = json['management_fees_and_carry'];
    hurdleRate = null;
    otherExpenses = null;
    focusedSectorsIndustries = null;
    regionsCovered = null;
    isinCode = null;
    focusedRealEstateSectors = null;
    reraCompliedProperty = null;
    returnOnInvestment = null;
    valuationPerSector = null;
    focusedFunds = null;
    tradingStrategy = null;
    involvedInShortSelling = null;
    minimumInvestment = null;
    companies = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['products_id'] = productsId;
    _data['companies_id'] = companiesId;
    _data['fund_name'] = fundName;
    _data['slug'] = slug;
    _data['registration_number'] = registrationNumber;
    _data['fund_category'] = fundCategory;
    _data['fund_structure'] = fundStructure;
    _data['fund_strategy'] = fundStrategy;
    _data['fund_domicile'] = fundDomicile;
    _data['fund_manager_name'] = fundManagerName;
    _data['website_of_the_fund'] = websiteOfTheFund;
    _data['fund_manager_experience'] = fundManagerExperience;
    _data['sponsor'] = sponsor;
    _data['manager'] = manager;
    _data['trustee'] = trustee;
    _data['auditor'] = auditor;
    _data['valuer_tax_advisor'] = valuerTaxAdvisor;
    _data['credit_rating'] = creditRating;
    _data['open_date'] = openDate;
    _data['first_close_date'] = firstCloseDate;
    _data['final_close_date'] = finalCloseDate;
    _data['tenure_from_final_date'] = tenureFromFinalDate;
    _data['commitment_period'] = commitmentPeriod;
    _data['native_currency'] = nativeCurrency;
    _data['target_corpus'] = targetCorpus;
    _data['investment_manager_contribution'] = investmentManagerContribution;
    _data['minimum_capital_commitment'] = minimumCapitalCommitment;
    _data['intial_drawdown'] = intialDrawdown;
    _data['accepting_overseas_investment'] = acceptingOverseasInvestment;
    _data['target_irr'] = targetIrr;
    _data['management_fees_and_carry'] = managementFeesAndCarry;
    _data['hurdle_rate'] = hurdleRate;
    _data['other_expenses'] = otherExpenses;
    _data['focused_sectors_industries'] = focusedSectorsIndustries;
    _data['regions_covered'] = regionsCovered;
    _data['isin_code'] = isinCode;
    _data['focused_real_estate_sectors'] = focusedRealEstateSectors;
    _data['rera_complied_property'] = reraCompliedProperty;
    _data['return_on_investment'] = returnOnInvestment;
    _data['valuation_per_sector'] = valuationPerSector;
    _data['focused_funds'] = focusedFunds;
    _data['trading_strategy'] = tradingStrategy;
    _data['involved_in_short_selling'] = involvedInShortSelling;
    _data['minimum_investment'] = minimumInvestment;
    _data['companies'] = companies;
    return _data;
  }
}