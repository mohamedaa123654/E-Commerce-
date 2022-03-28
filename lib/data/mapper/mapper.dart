import 'package:learn/app/extension.dart';
import 'package:learn/app/constant.dart';

// to convert the response into a non nullable object (model)

import 'package:learn/data/responses/responses.dart';
import 'package:learn/domain/model.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id?.orEmpty() ?? Constant.EMPTY,
        this?.name?.orEmpty() ?? Constant.EMPTY,
        this?.numOfNotifications?.orZero() ?? Constant.ZERO);
  }
}

extension ContactsResponseMapper on ContactResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.email?.orEmpty() ?? Constant.EMPTY,
        this?.phone?.orEmpty() ?? Constant.EMPTY,
        this?.link?.orEmpty() ?? Constant.EMPTY);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(this?.customer.toDomain(), this?.contacts.toDomain());
  }
}
