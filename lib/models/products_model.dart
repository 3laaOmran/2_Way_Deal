class ProductsModel {
  String? status;
  List<Message>? message = [];

  ProductsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    json['message'].forEach((v) {
      message!.add(Message.fromJson(v));
    });
  }
}

class Message {
  int? id;
  int? categoryId;
  int? storeId;
  String? name;
  String? expirationDate;
  String? imagePath;
  String? description;
  double? price;
  int? discount;
  double? finalPrice;
  int? availableFor;
  String? createdAt;
  String? updatedAt;
  Store? store;

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    storeId = json['store_id'];
    name = json['name'];
    expirationDate = json['expiration_date'];
    imagePath = json['image_path'];
    description = json['description'];
    price = json['price'];
    discount = json['discount'];
    finalPrice = json['final_price'];
    availableFor = json['available_for'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    store = json['store'] != null ? Store.fromJson(json['store']) : null;
  }
}

class Store {
  int? id;
  String? name;
  String? username;
  String? phone;
  String? email;
  int? verified;
  String? healthApprovalCertificate;
  String? commercialResturantLicense;
  String? governorate;
  String? city;
  String? street;
  String? imagePath;
  double? balance;
  String? createdAt;
  String? updatedAt;

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    phone = json['phone'];
    email = json['email'];
    verified = json['verified'];
    healthApprovalCertificate = json['HealthApprovalCertificate'];
    commercialResturantLicense = json['CommercialResturantLicense'];
    governorate = json['governorate'];
    city = json['city'];
    street = json['street'];
    imagePath = json['image_path'];
    balance = json['balance'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
