class GlobalResidentialDetailsModel {
  Data? data;

  GlobalResidentialDetailsModel({this.data});

  GlobalResidentialDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? propertyName;
  String? slug;
  String? propertyLocation;
  String? projectType;
  String? currentStatus;
  String? pricePerSqFt;
  String? bookingAmount;
  String? priceRange;
  String? totalPrice;
  String? transactionType;
  String? projectCodeOrReraId;
  String? builtUpArea;
  String? carpetArea;
  String? areaInSqFt;
  String? constructionStatus;
  String? launchDate;
  String? completedIn;
  String? totalUnits;
  String? unitType;
  String? noOfBedrooms;
  String? noOfRestrooms;
  String? noOfFloors;
  String? furnishedStatus;
  String? commencementCertificate;
  String? occupancyCertificate;
  String? totalTowers;
  String? builderDetails;
  String? landmarks;
  String? amenities;
  String? elevators;
  String? carParking;
  String? electricityStatus;
  String? fireSafetyMeasures;
  String? waterFacility;
  String? priceNegotiable;
  String? maintenanceFees;
  String? nearestRailwayMetroStation;
  String? preLeased;
  String? tenantDetails;
  String? facilitiesFeatures;
  String? constructionAge;
  String? location;
  String? country;
  String? remarks;
  List<Photos>? photos;
  List<Documents>? documents;

  Data(
      {this.id,
      this.productsId,
      this.propertyName,
      this.slug,
      this.propertyLocation,
      this.projectType,
      this.currentStatus,
      this.pricePerSqFt,
      this.bookingAmount,
      this.priceRange,
      this.totalPrice,
      this.transactionType,
      this.projectCodeOrReraId,
      this.builtUpArea,
      this.carpetArea,
      this.areaInSqFt,
      this.constructionStatus,
      this.launchDate,
      this.completedIn,
      this.totalUnits,
      this.unitType,
      this.noOfBedrooms,
      this.noOfRestrooms,
      this.noOfFloors,
      this.furnishedStatus,
      this.commencementCertificate,
      this.occupancyCertificate,
      this.totalTowers,
      this.builderDetails,
      this.landmarks,
      this.amenities,
      this.elevators,
      this.carParking,
      this.electricityStatus,
      this.fireSafetyMeasures,
      this.waterFacility,
      this.priceNegotiable,
      this.maintenanceFees,
      this.nearestRailwayMetroStation,
      this.preLeased,
      this.tenantDetails,
      this.facilitiesFeatures,
      this.constructionAge,
      this.location,
      this.country,
      this.remarks,
      this.photos,
      this.documents});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productsId = json['products_id'];
    propertyName = json['property_name'];
    slug = json['slug'];
    propertyLocation = json['property_location'];
    projectType = json['project_type'];
    currentStatus = json['current_status'];
    pricePerSqFt = json['price_per_sq_ft'];
    bookingAmount = json['booking_amount'];
    priceRange = json['price_range'];
    totalPrice = json['total_price'];
    transactionType = json['transaction_type'];
    projectCodeOrReraId = json['project_code_or_rera_id'];
    builtUpArea = json['built_up_area'];
    carpetArea = json['carpet_area'];
    areaInSqFt = json['area_in_sq_ft'];
    constructionStatus = json['construction_status'];
    launchDate = json['launch_date'];
    completedIn = json['completed_in'];
    totalUnits = json['total_units'];
    unitType = json['unit_type'];
    noOfBedrooms = json['no_of_bedrooms'];
    noOfRestrooms = json['no_of_restrooms'];
    noOfFloors = json['no_of_floors'];
    furnishedStatus = json['furnished_status'];
    commencementCertificate = json['commencement_certificate'];
    occupancyCertificate = json['occupancy_certificate'];
    totalTowers = json['total_towers'];
    builderDetails = json['builder_details'];
    landmarks = json['landmarks'];
    amenities = json['amenities'];
    elevators = json['elevators'];
    carParking = json['car_parking'];
    electricityStatus = json['electricity_status'];
    fireSafetyMeasures = json['fire_safety_measures'];
    waterFacility = json['water_facility'];
    priceNegotiable = json['price_negotiable'];
    maintenanceFees = json['maintenance_fees'];
    nearestRailwayMetroStation = json['nearest_railway_metro_station'];
    preLeased = json['pre_leased'];
    tenantDetails = json['tenant_details'];
    facilitiesFeatures = json['facilities_features'];
    constructionAge = json['construction_age'];
    location = json['location'];
    country = json['country'];
    remarks = json['remarks'];
  if (json['photos'] != null) {
    photos = <Photos>[];
    if (json['photos'] is List) {
      for (var photo in json['photos']) {
        if (photo != null) {
          photos!.add(Photos.fromJson(photo));
        } else {
          // Handle the case where a photo is null
          photos!.add(Photos(data: null));
        }
      }
    } else {
      // Handle the case where 'photos' is not a List
      // You may choose to throw an exception, set it to null, or handle it differently based on your requirement.
    }
  }
     if (json['documents'] != null) {
      documents = <Documents>[];
      if (json['documents'] is List) {
        for (var document in json['documents']) {
          if (document != null) {
            documents!.add(Documents.fromJson(document));
          } else {
            // Handle the case where a document is null
            documents!.add(Documents(data: null));
          }
        }
      } else {
        // Handle the case where 'documents' is not a List
        // You may choose to throw an exception, set it to null, or handle it differently based on your requirement.
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['products_id'] = this.productsId;
    data['property_name'] = this.propertyName;
    data['slug'] = this.slug;
    data['property_location'] = this.propertyLocation;
    data['project_type'] = this.projectType;
    data['current_status'] = this.currentStatus;
    data['price_per_sq_ft'] = this.pricePerSqFt;
    data['booking_amount'] = this.bookingAmount;
    data['price_range'] = this.priceRange;
    data['total_price'] = this.totalPrice;
    data['transaction_type'] = this.transactionType;
    data['project_code_or_rera_id'] = this.projectCodeOrReraId;
    data['built_up_area'] = this.builtUpArea;
    data['carpet_area'] = this.carpetArea;
    data['area_in_sq_ft'] = this.areaInSqFt;
    data['construction_status'] = this.constructionStatus;
    data['launch_date'] = this.launchDate;
    data['completed_in'] = this.completedIn;
    data['total_units'] = this.totalUnits;
    data['unit_type'] = this.unitType;
    data['no_of_bedrooms'] = this.noOfBedrooms;
    data['no_of_restrooms'] = this.noOfRestrooms;
    data['no_of_floors'] = this.noOfFloors;
    data['furnished_status'] = this.furnishedStatus;
    data['commencement_certificate'] = this.commencementCertificate;
    data['occupancy_certificate'] = this.occupancyCertificate;
    data['total_towers'] = this.totalTowers;
    data['builder_details'] = this.builderDetails;
    data['landmarks'] = this.landmarks;
    data['amenities'] = this.amenities;
    data['elevators'] = this.elevators;
    data['car_parking'] = this.carParking;
    data['electricity_status'] = this.electricityStatus;
    data['fire_safety_measures'] = this.fireSafetyMeasures;
    data['water_facility'] = this.waterFacility;
    data['price_negotiable'] = this.priceNegotiable;
    data['maintenance_fees'] = this.maintenanceFees;
    data['nearest_railway_metro_station'] = this.nearestRailwayMetroStation;
    data['pre_leased'] = this.preLeased;
    data['tenant_details'] = this.tenantDetails;
    data['facilities_features'] = this.facilitiesFeatures;
    data['construction_age'] = this.constructionAge;
    data['location'] = this.location;
    data['country'] = this.country;
    data['remarks'] = this.remarks;
   if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    if (this.documents != null) {
      data['documents'] = this.documents;
    }
    return data;
  }
}

class Photos {
  String? data;

  Photos({this.data});

  Photos.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    return data;
  }
}

class Documents {
  String? data;

  Documents({this.data});

  Documents.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    return data;
  }
}