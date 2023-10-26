class SpotlightinvestmentModel {
  String? productName;
  int? expectedSale;
  String? category;
  String? slug;

  SpotlightinvestmentModel(
      {this.productName, this.expectedSale, this.category, this.slug});

  SpotlightinvestmentModel.fromJson(Map<String, dynamic> json) {
    productName = json['product_name'];
    expectedSale = json['expected_sale'];
    category = json['category'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_name'] = this.productName;
    data['expected_sale'] = this.expectedSale;
    data['category'] = this.category;
    data['slug'] = this.slug;
    return data;
  }
}
