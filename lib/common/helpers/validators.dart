bool validatePassword(String value) {
  try {
    int.tryParse(value, radix: 10);
    if (value.length != 4) {
      return false;
    }
    return true;
  } catch (e) {
    if (value == null || value.length < 8) {
      return false;
    }
    return true;
  }
}

bool validateName(String value) {
  if (value.isEmpty) {
    return false;
  }
  return true;
}

bool validatePhone(String value) {
  try {
    int.tryParse(value, radix: 10);
    if (value.length < 10) {
      return false;
    }
    return true;
  } catch (e) {
    return false;
  }
}
