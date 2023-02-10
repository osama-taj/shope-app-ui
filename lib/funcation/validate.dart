import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "لايمكن ان يكون الحقل فارغ";
  }

  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "الاسم غير متاح";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "الايميل غير متاح";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "الرقم غير متاح";
    }
  }
  if (type == "number") {
    if (!GetUtils.isNum(val)) {
      return "الرقم غير متاح";
    }
  }
  if (val.length < min) {
    return "لايمكن ان يكون اصغر من $min";
  }

  if (val.length > max) {
    return "لايمكن ان يكون اكبر من $max";
  }
}
