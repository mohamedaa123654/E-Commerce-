import 'package:learn/app/extensions.dart';

import '../../app/constants.dart';
import '../../domain/model/models.dart';
import '../response/responses.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id?.orEmpty() ?? Constants.empty,
        this?.name?.orEmpty() ?? Constants.empty,
        this?.numOfNotifications?.orZero() ?? Constants.ZERO);
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.email?.orEmpty() ?? Constants.empty,
        this?.phone?.orEmpty() ?? Constants.empty,
        this?.link?.orEmpty() ?? Constants.empty);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(this?.customer.toDomain(), this?.contacts.toDomain());
  }
}
