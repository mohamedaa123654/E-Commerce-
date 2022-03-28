// extension on String
//fix null value
import 'package:learn/app/constant.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constant.EMPTY;
    } else {
      return this!;
    }
  }
}

// extension on Integer

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constant.ZERO;
    } else {
      return this!;
    }
  }
}
