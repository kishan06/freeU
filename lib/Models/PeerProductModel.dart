class PeerProductsModel {
  List<Data>? data;

  PeerProductsModel({this.data});

  PeerProductsModel.fromJson(Map<String, dynamic> json) {
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
  PeerToPeers? peerToPeers;

  Data({this.id, this.status, this.createdAt, this.peerToPeers});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdAt = json['created_at'];
    peerToPeers = json['peer_to_peers'] != null
        ? new PeerToPeers.fromJson(json['peer_to_peers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    if (this.peerToPeers != null) {
      data['peer_to_peers'] = this.peerToPeers!.toJson();
    }
    return data;
  }
}

class PeerToPeers {
  int? id;
  int? productsId;
  String? scheme;
  String? slug;
  String? tenure;
  String? minimumInvestment;
  String? maximumInvestment;
  String? returns;
  String? minimumInvestmentInInt;

  PeerToPeers(
      {this.id,
      this.productsId,
      this.scheme,
      this.slug,
      this.tenure,
      this.minimumInvestment,
      this.maximumInvestment,
      this.returns,
      this.minimumInvestmentInInt});

  PeerToPeers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    scheme = json['scheme'];
    slug = json['slug'];
    tenure = json['tenure'];
    minimumInvestment = json['minimum_investment'];
    maximumInvestment = json['maximum_investment'];
    returns = json['returns'];
    minimumInvestmentInInt = json['minimum_investment_in_int'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['scheme'] = this.scheme;
    data['slug'] = this.slug;
    data['tenure'] = this.tenure;
    data['minimum_investment'] = this.minimumInvestment;
    data['maximum_investment'] = this.maximumInvestment;
    data['returns'] = this.returns;
    data['minimum_investment_in_int'] = this.minimumInvestmentInInt;
    return data;
  }
}
