import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotifications")
  int? numOfNotifications;

  CustomerResponse(this.id, this.name, this.numOfNotifications);

  // from json
  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactsResponse {
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "link")
  String? link;

  ContactsResponse(this.phone, this.email, this.link);

  // from json
  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$ContactsResponseToJson(this);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contacts")
  ContactsResponse? contacts;

  AuthenticationResponse(this.customer, this.contacts);

  // from json
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}

@JsonSerializable()
class ForgotPasswordResponse extends BaseResponse {
  @JsonKey(name: 'support')
  String? support;

  ForgotPasswordResponse(this.support);

// toJson
  Map<String, dynamic> toJson() => _$ForgotPasswordResponseToJson(this);

//fromJson
  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);
}

@JsonSerializable()
class ServiceResponse {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'image')
  String? image;

  ServiceResponse(this.id, this.title, this.image);

  // toJson
  Map<String, dynamic> toJson() => _$ServiceResponseToJson(this);

//fromJson
  factory ServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceResponseFromJson(json);
}

@JsonSerializable()
class BannersResponse {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'link')
  String? link;

  BannersResponse(this.id, this.title, this.image, this.link);

  // toJson
  Map<String, dynamic> toJson() => _$BannersResponseToJson(this);

//fromJson
  factory BannersResponse.fromJson(Map<String, dynamic> json) =>
      _$BannersResponseFromJson(json);
}

@JsonSerializable()
class StoreResponse {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'image')
  String? image;

  StoreResponse(this.id, this.title, this.image);

  // toJson
  Map<String, dynamic> toJson() => _$StoreResponseToJson(this);

//fromJson
  factory StoreResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreResponseFromJson(json);
}

@JsonSerializable()
class HomeDataResponse {
  @JsonKey(name: 'services')
  List<ServiceResponse>? services;

  @JsonKey(name: 'banners')
  List<BannersResponse>? banners;

  @JsonKey(name: 'stores')
  List<StoreResponse>? stores;

  HomeDataResponse(this.services, this.banners, this.stores);

  // toJson
  Map<String, dynamic> toJson() => _$HomeDataResponseToJson(this);

//fromJson
  factory HomeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeDataResponseFromJson(json);
}

@JsonSerializable()
class HomeResponse extends BaseResponse {
  @JsonKey(name: 'data')
  HomeDataResponse? data;

  HomeResponse(this.data);

  // toJson
  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);

//fromJson
  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@JsonSerializable()
class StoreDetailsResponse extends BaseResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'details')
  String? details;
  @JsonKey(name: 'services')
  String? services;
  @JsonKey(name: 'about')
  String? about;

  StoreDetailsResponse(
      this.id, this.title, this.image, this.details, this.services, this.about);

  factory StoreDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StoreDetailsResponseToJson(this);
}



// @JsonSerializable()
// class ServicesResponse {
//   @JsonKey(name: 'id')
//   String? id;
//   @JsonKey(name: 'title')
//   String? title;
//   @JsonKey(name: 'image')
//   String? image;

//   ServicesResponse(this.id, this.title, this.image);

// // toJson
//   Map<String, dynamic> toJson() => _$ServicesResponseToJson(this);

// //fromJson
//   factory ServicesResponse.fromJson(Map<String, dynamic> json) =>
//       _$ServicesResponseFromJson(json);
// }

// @JsonSerializable()
// class BannersResponse {
//   @JsonKey(name: 'id')
//   String? id;
//   @JsonKey(name: 'link')
//   String? link;
//   @JsonKey(name: 'title')
//   String? title;
//   @JsonKey(name: 'image')
//   String? image;

//   BannersResponse(this.id, this.link, this.title, this.image);

// // toJson
//   Map<String, dynamic> toJson() => _$BannersResponseToJson(this);

// //fromJson
//   factory BannersResponse.fromJson(Map<String, dynamic> json) =>
//       _$BannersResponseFromJson(json);
// }

// @JsonSerializable()
// class StoresResponse {
//   @JsonKey(name: 'id')
//   String? id;
//   @JsonKey(name: 'title')
//   String? title;
//   @JsonKey(name: 'image')
//   String? image;

//   StoresResponse(this.id, this.title, this.image);

// // toJson
//   Map<String, dynamic> toJson() => _$StoresResponseToJson(this);

// //fromJson
//   factory StoresResponse.fromJson(Map<String, dynamic> json) =>
//       _$StoresResponseFromJson(json);
// }

// @JsonSerializable()
// class HomeDataResponse {
//   @JsonKey(name: 'service')
//   List<ServicesResponse>? services;
//   @JsonKey(name: 'banners')
//   List<BannersResponse>? banners;
//   @JsonKey(name: 'stores')
//   List<StoresResponse>? stores;
//   HomeDataResponse(this.services, this.banners, this.stores);

// // toJson
//   Map<String, dynamic> toJson() => _$HomeDataResponseToJson(this);

// //fromJson
//   factory HomeDataResponse.fromJson(Map<String, dynamic> json) =>
//       _$HomeDataResponseFromJson(json);
// }

// @JsonSerializable()
// class HomeResponse {
//   @JsonKey(name: 'data')
//   List<HomeDataResponse>? data;

//   HomeResponse(this.data);

// // toJson
//   Map<String, dynamic> toJson() => _$HomeResponseToJson(this);

// //fromJson
//   factory HomeResponse.fromJson(Map<String, dynamic> json) =>
//       _$HomeResponseFromJson(json);
// }
