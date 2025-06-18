class OwnerAndCarModel {
  int? id;
  String? profilePic;
  String? name;
  String? email;
  String? contact;
  String? licenseNo;
  List<Cars>? cars;

  OwnerAndCarModel(
      {this.id,
      this.profilePic,
      this.name,
      this.email,
      this.contact,
      this.licenseNo,
      this.cars});

  OwnerAndCarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profilePic = json['profilePic'];
    name = json['name'];
    email = json['email'];
    contact = json['contact'];
    licenseNo = json['licenseNo'];
    if (json['cars'] != null) {
      cars = <Cars>[];
      json['cars'].forEach((v) {
        cars!.add(new Cars.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['profilePic'] = this.profilePic;
    data['name'] = this.name;
    data['email'] = this.email;
    data['contact'] = this.contact;
    data['licenseNo'] = this.licenseNo;
    if (this.cars != null) {
      data['cars'] = this.cars!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cars {
  int? id;
  String? carName;
  String? brandName;
  int? price;
  int? seats;
  int? mileage;
  String? city;
  int? maxSpeed;
  int? engineOut;
  String? advance;
  String? feature;
  String? registrationNo;
  String? color;
  String? fuel;
  String? detail;
  List<String>? imageUrls;

  Cars(
      {this.id,
      this.carName,
      this.brandName,
      this.price,
      this.seats,
      this.mileage,
      this.city,
      this.maxSpeed,
      this.engineOut,
      this.advance,
      this.feature,
      this.registrationNo,
      this.color,
      this.fuel,
      this.detail,
      this.imageUrls});

  Cars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    carName = json['carName'];
    brandName = json['brandName'];
    price = json['price'];
    seats = json['seats'];
    mileage = json['mileage'];
    city = json['city'];
    maxSpeed = json['maxSpeed'];
    engineOut = json['engineOut'];
    advance = json['advance'];
    feature = json['feature'];
    registrationNo = json['registrationNo'];
    color = json['color'];
    fuel = json['fuel'];
    detail = json['detail'];
    imageUrls = json['image_urls'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['carName'] = this.carName;
    data['brandName'] = this.brandName;
    data['price'] = this.price;
    data['seats'] = this.seats;
    data['mileage'] = this.mileage;
    data['city'] = this.city;
    data['maxSpeed'] = this.maxSpeed;
    data['engineOut'] = this.engineOut;
    data['advance'] = this.advance;
    data['feature'] = this.feature;
    data['registrationNo'] = this.registrationNo;
    data['color'] = this.color;
    data['fuel'] = this.fuel;
    data['detail'] = this.detail;
    data['image_urls'] = this.imageUrls;
    return data;
  }
}