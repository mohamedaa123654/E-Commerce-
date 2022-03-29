import 'package:learn/app/extension.dart';
import 'package:learn/app/constant.dart';

// to convert the response into a non nullable object (model)

import 'package:learn/data/responses/responses.dart';
import 'package:learn/domain/model.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id?.orEmpty() ?? Constants.EMPTY,
        this?.name?.orEmpty() ?? Constants.EMPTY,
        this?.numOfNotifications?.orZero() ?? Constants.ZERO);
  }
}

extension ContactsResponseMapper on ContactResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.email?.orEmpty() ?? Constants.EMPTY,
        this?.phone?.orEmpty() ?? Constants.EMPTY,
        this?.link?.orEmpty() ?? Constants.EMPTY);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(this?.customer.toDomain(), this?.contacts.toDomain());
  }
}
